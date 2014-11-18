using System;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;

public static class Cryptography
{
    /// <summary>
    /// The password for which to derive the key.
    /// </summary>
    private const string _strPassword = "-->>>[#{(--!$!--)}#]<<<--";
    /// <summary>
    /// The key salt to use to derive the key.
    /// </summary>
    private const string _strSalt = "~~~>[~~>{~>!(-$-)!<~}<~~]<~~~";
    /// <summary>
    /// Represents the initialization vector (IV) for the symmetric algorithm.
    /// </summary>
    private const string _strIV = "---->[{()}]<----";
    /// <summary>
    /// The name of the hash algorithm for the operation. Could be "SHA1" or "MD5".
    /// </summary>
    private const string _strHashName = "SHA1";
    /// <summary>
    /// The number of iterations for the operation.
    /// </summary>
    private const int _iIterations = 2;
    /// <summary>
    /// Represents the size, in bits, of the secret key used by the symmetric algorithm.
    /// </summary>
    private const int _iKeySize = 256;
    /// <summary>
    /// Creates an Encrypted string.
    /// </summary>
    /// <param name="strTextToEncrypt">String to Encrypt.</param>
    /// <returns>Encrypted string.</returns>
    public static string Encrypt(string strTextToEncrypt)
    {
        if (strTextToEncrypt == string.Empty)
            return string.Empty;

        {
            byte[] bIVBytes = Encoding.ASCII.GetBytes(_strIV);
            byte[] bSaltBytes = Encoding.ASCII.GetBytes(_strSalt);
            byte[] bTextToEncryptBytes = Encoding.UTF8.GetBytes(strTextToEncrypt);
            PasswordDeriveBytes bPasswordDeriveBytes = new PasswordDeriveBytes(_strPassword, bSaltBytes, _strHashName, _iIterations);
            byte[] bKeyBytes = bPasswordDeriveBytes.GetBytes(_iKeySize / 8);
            // "Algorithm" used for Cryptography.
            RijndaelManaged SymmetricAlgorithm = new RijndaelManaged();
            SymmetricAlgorithm.Mode = CipherMode.CBC;
            ICryptoTransform Encryptor = SymmetricAlgorithm.CreateEncryptor(bKeyBytes, bIVBytes);
            // "Memory" used to Store Encrypted Bits.
            MemoryStream Memory = new MemoryStream();
            // "Stream" used for Encryption Process.
            CryptoStream StreamToEncrypt = new CryptoStream(Memory, Encryptor, CryptoStreamMode.Write);
            StreamToEncrypt.Write(bTextToEncryptBytes, 0, bTextToEncryptBytes.Length);
            StreamToEncrypt.FlushFinalBlock();
            string strEncryptedText = Convert.ToBase64String(Memory.ToArray());
            Memory.Close();
            StreamToEncrypt.Close();
            return strEncryptedText;
        }
    }
    /// <summary>
    /// Decrypts a string.
    /// </summary>
    /// <param name="strTextToDecrypt">String to Decrypt.</param>
    /// <returns>Decrypted (Original) string.</returns>
    public static string Decrypt(string strTextToDecrypt)
    {
        if (strTextToDecrypt == string.Empty)
            return string.Empty;

        {
            byte[] bIVBytes = Encoding.ASCII.GetBytes(_strIV);
            byte[] bSaltBytes = Encoding.ASCII.GetBytes(_strSalt);
            byte[] bTextToDecryptBytes = Convert.FromBase64String(strTextToDecrypt);
            PasswordDeriveBytes bPasswordDeriveBytes = new PasswordDeriveBytes(_strPassword, bSaltBytes, _strHashName, _iIterations);
            byte[] bKeyBytes = bPasswordDeriveBytes.GetBytes(_iKeySize / 8);
            // "Algorithm" used for Cryptography.
            RijndaelManaged SymmetricAlgorithm = new RijndaelManaged();
            SymmetricAlgorithm.Mode = CipherMode.CBC;
            ICryptoTransform Decryptor = SymmetricAlgorithm.CreateDecryptor(bKeyBytes, bIVBytes);
            // "Memory" used to Store Encrypted Bits and it is created from Encrypted Bytes.
            MemoryStream Memory = new MemoryStream(bTextToDecryptBytes);
            // "Stream" used for Decryption Process.
            CryptoStream StreamToDecrypt = new CryptoStream(Memory, Decryptor, CryptoStreamMode.Read);
            byte[] bDecryptedTextBytes = new byte[bTextToDecryptBytes.Length];
            int iDecryptedTextBytesCount = StreamToDecrypt.Read(bDecryptedTextBytes, 0, bDecryptedTextBytes.Length);
            Memory.Close();
            StreamToDecrypt.Close();
            return Encoding.UTF8.GetString(bDecryptedTextBytes, 0, iDecryptedTextBytesCount);
        }
    }
}
