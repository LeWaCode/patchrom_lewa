.class public final Llewa/util/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Llewa/util/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Llewa/util/DiskLruCache;


# direct methods
.method private constructor <init>(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Entry;)V
    .locals 0
    .parameter
    .parameter "entry"

    .prologue
    .line 779
    iput-object p1, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p2, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    .line 781
    return-void
.end method

.method synthetic constructor <init>(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Llewa/util/DiskLruCache$Editor;-><init>(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 775
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2002(Llewa/util/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    iput-boolean p1, p0, Llewa/util/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    const/4 v1, 0x0

    #calls: Llewa/util/DiskLruCache;->completeEdit(Llewa/util/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Llewa/util/DiskLruCache;->access$1900(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Editor;Z)V

    .line 856
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    iget-boolean v0, p0, Llewa/util/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    const/4 v1, 0x0

    #calls: Llewa/util/DiskLruCache;->completeEdit(Llewa/util/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Llewa/util/DiskLruCache;->access$1900(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Editor;Z)V

    .line 844
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    iget-object v1, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    #getter for: Llewa/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Llewa/util/DiskLruCache$Entry;->access$1100(Llewa/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/util/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    const/4 v1, 0x1

    #calls: Llewa/util/DiskLruCache;->completeEdit(Llewa/util/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Llewa/util/DiskLruCache;->access$1900(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Llewa/util/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 805
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    #calls: Llewa/util/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Llewa/util/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    monitor-enter v1

    .line 789
    :try_start_0
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 792
    :cond_0
    :try_start_1
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    #getter for: Llewa/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$600(Llewa/util/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    const/4 v0, 0x0

    monitor-exit v1

    .line 795
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Llewa/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor;->this$0:Llewa/util/DiskLruCache;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v0, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 820
    :cond_0
    :try_start_1
    new-instance v0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Llewa/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Llewa/util/DiskLruCache$Editor;Ljava/io/OutputStream;Llewa/util/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Llewa/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Llewa/util/DiskLruCache;->access$1800()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    invoke-static {v1}, Llewa/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 835
    return-void

    .line 833
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Llewa/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_0
.end method
