.class public Lcom/qihoopp/framework/FormFile;
.super Ljava/lang/Object;
.source "FormFile.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private file_send_name:Ljava/lang/String;

.field private inStream:Ljava/io/InputStream;

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "file_send_name"
    .parameter "file"
    .parameter "parameterName"
    .parameter "contentType"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v1, "FormFile"

    iput-object v1, p0, Lcom/qihoopp/framework/FormFile;->TAG:Ljava/lang/String;

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    .line 23
    const-string v1, "360zhifu/error_param"

    iput-object v1, p0, Lcom/qihoopp/framework/FormFile;->parameterName:Ljava/lang/String;

    .line 25
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/qihoopp/framework/FormFile;->contentType:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/qihoopp/framework/FormFile;->file_send_name:Ljava/lang/String;

    .line 55
    const-string v1, "FormFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FormFile, file_send_name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/qihoopp/framework/FormFile;->file:Ljava/io/File;

    .line 58
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    if-eqz p3, :cond_0

    .line 63
    iput-object p3, p0, Lcom/qihoopp/framework/FormFile;->parameterName:Ljava/lang/String;

    .line 65
    :cond_0
    if-eqz p4, :cond_1

    .line 66
    iput-object p4, p0, Lcom/qihoopp/framework/FormFile;->contentType:Ljava/lang/String;

    .line 67
    :cond_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "file_send_name"
    .parameter "data"
    .parameter "parameterName"
    .parameter "contentType"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "FormFile"

    iput-object v0, p0, Lcom/qihoopp/framework/FormFile;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    .line 23
    const-string v0, "360zhifu/error_param"

    iput-object v0, p0, Lcom/qihoopp/framework/FormFile;->parameterName:Ljava/lang/String;

    .line 25
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/qihoopp/framework/FormFile;->contentType:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/qihoopp/framework/FormFile;->file_send_name:Ljava/lang/String;

    .line 36
    const-string v0, "FormFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FormFile, file_send_name is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/qihoopp/framework/FormFile;->data:[B

    .line 38
    if-eqz p3, :cond_0

    .line 39
    iput-object p3, p0, Lcom/qihoopp/framework/FormFile;->parameterName:Ljava/lang/String;

    .line 41
    :cond_0
    if-eqz p4, :cond_1

    .line 42
    iput-object p4, p0, Lcom/qihoopp/framework/FormFile;->contentType:Ljava/lang/String;

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/qihoopp/framework/FormFile;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->data:[B

    if-eqz v4, :cond_1

    .line 79
    iget-object v0, p0, Lcom/qihoopp/framework/FormFile;->data:[B

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->file:Ljava/io/File;

    if-eqz v4, :cond_4

    .line 81
    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 82
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/qihoopp/framework/FormFile;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 85
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 86
    .local v2, offset_file:I
    const/4 v1, 0x0

    .line 89
    .local v1, numRead_file:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_3

    .line 90
    add-int/2addr v2, v1

    goto :goto_1

    .line 92
    :cond_3
    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 93
    iput-object v3, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    .line 94
    iget-object v4, p0, Lcom/qihoopp/framework/FormFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    if-eq v2, v4, :cond_0

    .line 97
    const-string v4, "FormFile"

    const-string v5, "getData, offset_file != (int) file.length()!"

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 98
    goto :goto_0

    .line 101
    .end local v0           #buffer:[B
    .end local v1           #numRead_file:I
    .end local v2           #offset_file:I
    :cond_4
    const-string v4, "FormFile"

    const-string v5, "getData, file is null!"

    invoke-static {v4, v5}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 102
    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qihoopp/framework/FormFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileSendName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qihoopp/framework/FormFile;->file_send_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qihoopp/framework/FormFile;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/qihoopp/framework/FormFile;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/qihoopp/framework/FormFile;->contentType:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .parameter "parameterName"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/qihoopp/framework/FormFile;->parameterName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setfile_send_name(Ljava/lang/String;)V
    .locals 0
    .parameter "file_send_name"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qihoopp/framework/FormFile;->file_send_name:Ljava/lang/String;

    .line 112
    return-void
.end method
