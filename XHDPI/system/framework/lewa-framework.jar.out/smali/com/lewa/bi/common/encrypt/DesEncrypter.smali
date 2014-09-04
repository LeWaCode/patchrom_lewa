.class public Lcom/lewa/bi/common/encrypt/DesEncrypter;
.super Ljava/lang/Object;
.source "DesEncrypter.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final CIPHER_SPEC:Ljava/lang/String; = "DES/ECB/NOPADDING"

.field private static final DES:Ljava/lang/String; = "DES"

.field private static final KEY_GENERATOR:Ljavax/crypto/KeyGenerator;

.field private static final MD5:Ljava/security/MessageDigest;


# instance fields
.field private final dcipher:Ljavax/crypto/Cipher;

.field private final ecipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    sput-object v1, Lcom/lewa/bi/common/encrypt/DesEncrypter;->KEY_GENERATOR:Ljavax/crypto/KeyGenerator;

    .line 34
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/lewa/bi/common/encrypt/DesEncrypter;->MD5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    :try_start_0
    const-string v1, "DES/ECB/NOPADDING"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->ecipher:Ljavax/crypto/Cipher;

    .line 80
    iget-object v1, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->ecipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 83
    const-string v1, "DES/ECB/NOPADDING"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->dcipher:Ljavax/crypto/Cipher;

    .line 84
    iget-object v1, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->dcipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "keyValue"

    .prologue
    .line 73
    invoke-static {p1}, Lcom/lewa/bi/common/encrypt/DesEncrypter;->getKey([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lewa/bi/common/encrypt/DesEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 74
    return-void
.end method

.method public static createKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->KEY_GENERATOR:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static createKeyBytes()[B
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/lewa/bi/common/encrypt/DesEncrypter;->createKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static getKey([B)Ljavax/crypto/SecretKey;
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 59
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static md5Digest(Ljava/lang/String;)[B
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/encrypt/DesEncrypter;->md5Digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Digest([B)[B
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->MD5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lewa/bi/common/gson/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/bi/common/encrypt/DesEncrypter;->decrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/util/ByteUtil;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public decrypt([B)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->dcipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lewa/bi/common/util/ByteUtil;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/bi/common/encrypt/DesEncrypter;->encrypt([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lewa/bi/common/gson/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt([B)[B
    .locals 9
    .parameter "value"

    .prologue
    const/16 v3, 0x8

    .line 107
    array-length v8, p1

    .line 109
    .local v8, length:I
    :try_start_0
    rem-int/lit8 v0, v8, 0x8

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->ecipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 125
    :goto_0
    return-object v4

    .line 114
    :cond_0
    div-int/lit8 v0, v8, 0x8

    mul-int/lit8 v5, v0, 0x8

    .line 115
    .local v5, lastBlockPos:I
    add-int/lit8 v0, v5, 0x8

    new-array v4, v0, [B

    .line 116
    .local v4, output:[B
    iget-object v0, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->ecipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v5, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 117
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 118
    .local v1, lastBlock:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    sub-int v0, v8, v5

    if-ge v7, v0, :cond_1

    .line 119
    add-int v0, v5, v7

    aget-byte v0, p1, v0

    aput-byte v0, v1, v7

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 121
    :cond_1
    sub-int v7, v8, v5

    :goto_2
    if-ge v7, v3, :cond_2

    .line 122
    const/16 v0, 0x20

    aput-byte v0, v1, v7

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/lewa/bi/common/encrypt/DesEncrypter;->ecipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v1           #lastBlock:[B
    .end local v4           #output:[B
    .end local v5           #lastBlockPos:I
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 127
    .local v6, e:Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
