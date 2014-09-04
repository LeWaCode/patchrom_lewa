.class Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Llewa/util/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Llewa/util/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 859
    iput-object p1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llewa/util/DiskLruCache$Editor;

    .line 860
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 861
    return-void
.end method

.method synthetic constructor <init>(Llewa/util/DiskLruCache$Editor;Ljava/io/OutputStream;Llewa/util/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Llewa/util/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 881
    :try_start_0
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llewa/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llewa/util/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llewa/util/DiskLruCache$Editor;->access$2002(Llewa/util/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 889
    :try_start_0
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llewa/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llewa/util/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llewa/util/DiskLruCache$Editor;->access$2002(Llewa/util/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llewa/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llewa/util/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llewa/util/DiskLruCache$Editor;->access$2002(Llewa/util/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 873
    :try_start_0
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llewa/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llewa/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llewa/util/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llewa/util/DiskLruCache$Editor;->access$2002(Llewa/util/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
