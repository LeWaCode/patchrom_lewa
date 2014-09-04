.class public Llewa/bi/utils/LewaMD5Utils;
.super Ljava/lang/Object;
.source "LewaMD5Utils.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_MD5:Ljava/lang/String; = "MD5"

.field public static hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Llewa/bi/utils/LewaMD5Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/bi/utils/LewaMD5Utils;->TAG:Ljava/lang/String;

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Llewa/bi/utils/LewaMD5Utils;->hexChar:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "file"
    .parameter "hashType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    .local v1, fis:Ljava/io/InputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 20
    .local v0, buffer:[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 21
    .local v2, md5:Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .line 22
    .local v3, numRead:I
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 23
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 26
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Llewa/bi/utils/LewaMD5Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matchMD5(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .parameter "fileSrc"
    .parameter "fileTarget"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, boo:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const-string v4, "MD5"

    invoke-static {p0, v4}, Llewa/bi/utils/LewaMD5Utils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, md5CodeSrc:Ljava/lang/String;
    const-string v4, "MD5"

    invoke-static {p1, v4}, Llewa/bi/utils/LewaMD5Utils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, md5CodeTarget:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 80
    .end local v2           #md5CodeSrc:Ljava/lang/String;
    .end local v3           #md5CodeTarget:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static matchMD5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .parameter "mDownloadedFile"
    .parameter "mDownloadFileHashCode"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, boo:Z
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "MD5"

    invoke-static {p0, v4}, Llewa/bi/utils/LewaMD5Utils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, md5Code:Ljava/lang/String;
    move-object v3, p1

    .line 57
    .local v3, serverMd5Code:Ljava/lang/String;
    sget-object v4, Llewa/bi/utils/LewaMD5Utils;->TAG:Ljava/lang/String;

    const-string v5, "md5Code:%s,serverMd5Code:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 65
    .end local v2           #md5Code:Ljava/lang/String;
    .end local v3           #serverMd5Code:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 37
    sget-object v2, Llewa/bi/utils/LewaMD5Utils;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    sget-object v2, Llewa/bi/utils/LewaMD5Utils;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
