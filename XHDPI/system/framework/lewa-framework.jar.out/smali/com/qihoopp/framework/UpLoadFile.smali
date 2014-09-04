.class public Lcom/qihoopp/framework/UpLoadFile;
.super Ljava/lang/Object;
.source "UpLoadFile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpLoadFile"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private filname:Ljava/lang/String;

.field private inStream:Ljava/io/InputStream;

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filname"
    .parameter "file"
    .parameter "parameterName"
    .parameter "contentType"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, "application/octet-stream"

    iput-object v1, p0, Lcom/qihoopp/framework/UpLoadFile;->contentType:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/qihoopp/framework/UpLoadFile;->filname:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/qihoopp/framework/UpLoadFile;->parameterName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/qihoopp/framework/UpLoadFile;->file:Ljava/io/File;

    .line 50
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/qihoopp/framework/UpLoadFile;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/qihoopp/framework/UpLoadFile;->contentType:Ljava/lang/String;

    .line 55
    :cond_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "UpLoadFile"

    const-string v2, "FileNotFoundException"

    invoke-static {v1, v2, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "filname"
    .parameter "data"
    .parameter "parameterName"
    .parameter "contentType"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->contentType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/qihoopp/framework/UpLoadFile;->data:[B

    .line 34
    iput-object p1, p0, Lcom/qihoopp/framework/UpLoadFile;->filname:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/qihoopp/framework/UpLoadFile;->parameterName:Ljava/lang/String;

    .line 36
    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/qihoopp/framework/UpLoadFile;->contentType:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->data:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->filname:Ljava/lang/String;

    return-object v0
.end method

.method public getInStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qihoopp/framework/UpLoadFile;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/qihoopp/framework/UpLoadFile;->contentType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFilname(Ljava/lang/String;)V
    .locals 0
    .parameter "filname"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qihoopp/framework/UpLoadFile;->filname:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .parameter "parameterName"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/qihoopp/framework/UpLoadFile;->parameterName:Ljava/lang/String;

    .line 83
    return-void
.end method
