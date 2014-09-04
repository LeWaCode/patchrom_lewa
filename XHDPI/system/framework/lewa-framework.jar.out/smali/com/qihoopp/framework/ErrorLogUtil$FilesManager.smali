.class Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;
.super Ljava/lang/Object;
.source "ErrorLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoopp/framework/ErrorLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilesManager"
.end annotation


# instance fields
.field private mFiles:[Ljava/io/File;

.field private mFilesName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/qihoopp/framework/ErrorLogUtil;


# direct methods
.method public constructor <init>(Lcom/qihoopp/framework/ErrorLogUtil;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "path"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->this$0:Lcom/qihoopp/framework/ErrorLogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const-string v2, "errorLogUtil"

    const-string v3, "FilesManager, enter FileManager."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v2, "errorLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileManager, path is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, dir:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 648
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 651
    const-string v2, "errorLogUtil"

    const-string v3, "FilesManager, dir not exits."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_1
    return-void

    .line 654
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    .line 655
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFilesName:[Ljava/lang/String;

    .line 656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFilesName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFilesName:[Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteFiles()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 663
    const/4 v1, 0x1

    .line 664
    .local v1, result:Z
    iget-object v3, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    if-eqz v3, :cond_3

    .line 665
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    const-string v3, "errorLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFiles, file name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v3, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 665
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 675
    :cond_1
    if-eqz v1, :cond_2

    .line 676
    const-string v2, "errorLogUtil"

    const-string v3, "deleteFiles, success."

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v2, 0x1

    .line 684
    .end local v0           #i:I
    :goto_2
    return v2

    .line 679
    .restart local v0       #i:I
    :cond_2
    const-string v3, "errorLogUtil"

    const-string v4, "deleteFiles, failed, not all delete."

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 683
    .end local v0           #i:I
    :cond_3
    const-string v3, "errorLogUtil"

    const-string v4, "deleteFiles, mFiles == null."

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    return-object v0
.end method

.method public getFilesName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFilesName:[Ljava/lang/String;

    return-object v0
.end method

.method public updateFilesInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 693
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 694
    const-string v1, "errorLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilesInfo, file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 698
    const-string v1, "errorLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilesInfo, file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aput-object v4, v1, v0

    goto :goto_1

    .line 702
    :cond_2
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    const-string v1, "errorLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilesInfo, file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exits."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/qihoopp/framework/ErrorLogUtil$FilesManager;->mFiles:[Ljava/io/File;

    aput-object v4, v1, v0

    goto :goto_1

    .line 717
    :cond_3
    return-void
.end method
