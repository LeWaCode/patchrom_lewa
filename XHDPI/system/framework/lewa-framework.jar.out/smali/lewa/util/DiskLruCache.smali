.class public final Llewa/util/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/DiskLruCache$Entry;,
        Llewa/util/DiskLruCache$Editor;,
        Llewa/util/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset; = null

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/util/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Llewa/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-wide v4, p0, Llewa/util/DiskLruCache;->size:J

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 172
    iput-wide v4, p0, Llewa/util/DiskLruCache;->nextSequenceNumber:J

    .line 271
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Llewa/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 273
    new-instance v0, Llewa/util/DiskLruCache$1;

    invoke-direct {v0, p0}, Llewa/util/DiskLruCache$1;-><init>(Llewa/util/DiskLruCache;)V

    iput-object v0, p0, Llewa/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 290
    iput-object p1, p0, Llewa/util/DiskLruCache;->directory:Ljava/io/File;

    .line 291
    iput p2, p0, Llewa/util/DiskLruCache;->appVersion:I

    .line 292
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llewa/util/DiskLruCache;->journalFile:Ljava/io/File;

    .line 293
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llewa/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 294
    iput p3, p0, Llewa/util/DiskLruCache;->valueCount:I

    .line 295
    iput-wide p4, p0, Llewa/util/DiskLruCache;->maxSize:J

    .line 296
    return-void
.end method

.method static synthetic access$000(Llewa/util/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Llewa/util/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Llewa/util/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Llewa/util/DiskLruCache;Ljava/lang/String;J)Llewa/util/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Llewa/util/DiskLruCache;->edit(Ljava/lang/String;J)Llewa/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Llewa/util/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Llewa/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1900(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Llewa/util/DiskLruCache;->completeEdit(Llewa/util/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Llewa/util/DiskLruCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Llewa/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Llewa/util/DiskLruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Llewa/util/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2200(Llewa/util/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Llewa/util/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Llewa/util/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Llewa/util/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Llewa/util/DiskLruCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .parameter "closeable"

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 243
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, rethrown:Ljava/lang/RuntimeException;
    throw v0

    .line 246
    .end local v0           #rethrown:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Llewa/util/DiskLruCache$Editor;Z)V
    .locals 12
    .parameter "editor"
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    #getter for: Llewa/util/DiskLruCache$Editor;->entry:Llewa/util/DiskLruCache$Entry;
    invoke-static {p1}, Llewa/util/DiskLruCache$Editor;->access$1400(Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Entry;

    move-result-object v2

    .line 568
    .local v2, entry:Llewa/util/DiskLruCache$Entry;
    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 569
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .end local v2           #entry:Llewa/util/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 573
    .restart local v2       #entry:Llewa/util/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    #getter for: Llewa/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$600(Llewa/util/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 574
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p0, Llewa/util/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    .line 575
    invoke-virtual {v2, v3}, Llewa/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 576
    invoke-virtual {p1}, Llewa/util/DiskLruCache$Editor;->abort()V

    .line 577
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 574
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget v8, p0, Llewa/util/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    .line 583
    invoke-virtual {v2, v3}, Llewa/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 584
    .local v1, dirty:Ljava/io/File;
    if-eqz p2, :cond_4

    .line 585
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 586
    invoke-virtual {v2, v3}, Llewa/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 587
    .local v0, clean:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 588
    #getter for: Llewa/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$1000(Llewa/util/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 589
    .local v6, oldLength:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 590
    .local v4, newLength:J
    #getter for: Llewa/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$1000(Llewa/util/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 591
    iget-wide v8, p0, Llewa/util/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Llewa/util/DiskLruCache;->size:J

    .line 582
    .end local v0           #clean:Ljava/io/File;
    .end local v4           #newLength:J
    .end local v6           #oldLength:J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 594
    :cond_4
    invoke-static {v1}, Llewa/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 598
    .end local v1           #dirty:Ljava/io/File;
    :cond_5
    iget v8, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    .line 599
    const/4 v8, 0x0

    #setter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v2, v8}, Llewa/util/DiskLruCache$Entry;->access$702(Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Editor;

    .line 600
    #getter for: Llewa/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$600(Llewa/util/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    .line 601
    const/4 v8, 0x1

    #setter for: Llewa/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Llewa/util/DiskLruCache$Entry;->access$602(Llewa/util/DiskLruCache$Entry;Z)Z

    .line 602
    iget-object v8, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llewa/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$1100(Llewa/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Llewa/util/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 603
    if-eqz p2, :cond_6

    .line 604
    iget-wide v8, p0, Llewa/util/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Llewa/util/DiskLruCache;->nextSequenceNumber:J

    #setter for: Llewa/util/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Llewa/util/DiskLruCache$Entry;->access$1202(Llewa/util/DiskLruCache$Entry;J)J

    .line 611
    :cond_6
    :goto_3
    iget-wide v8, p0, Llewa/util/DiskLruCache;->size:J

    iget-wide v10, p0, Llewa/util/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Llewa/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 612
    :cond_7
    iget-object v8, p0, Llewa/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Llewa/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :cond_8
    monitor-exit p0

    return-void

    .line 607
    :cond_9
    :try_start_2
    iget-object v8, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Llewa/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$1100(Llewa/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v8, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llewa/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llewa/util/DiskLruCache$Entry;->access$1100(Llewa/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    .line 178
    .local v1, originalLength:I
    if-le p1, p2, :cond_0

    .line 179
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 181
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 182
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 184
    :cond_2
    sub-int v3, p2, p1

    .line 185
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 186
    .local v0, copyLength:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 188
    .local v2, result:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 8
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 257
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_0

    .line 258
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 260
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 261
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    invoke-static {v1}, Llewa/util/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 264
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 265
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 260
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v1           #file:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 467
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Llewa/util/DiskLruCache$Editor;
    .locals 5
    .parameter "key"
    .parameter "expectedSequenceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 519
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llewa/util/DiskLruCache;->checkNotClosed()V

    .line 520
    invoke-direct {p0, p1}, Llewa/util/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/util/DiskLruCache$Entry;

    .line 522
    .local v1, entry:Llewa/util/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    #getter for: Llewa/util/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Llewa/util/DiskLruCache$Entry;->access$1200(Llewa/util/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 539
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 526
    :cond_1
    if-nez v1, :cond_3

    .line 527
    :try_start_1
    new-instance v1, Llewa/util/DiskLruCache$Entry;

    .end local v1           #entry:Llewa/util/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Llewa/util/DiskLruCache$Entry;-><init>(Llewa/util/DiskLruCache;Ljava/lang/String;Llewa/util/DiskLruCache$1;)V

    .line 528
    .restart local v1       #entry:Llewa/util/DiskLruCache$Entry;
    iget-object v2, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_2
    new-instance v0, Llewa/util/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Llewa/util/DiskLruCache$Editor;-><init>(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$1;)V

    .line 534
    .local v0, editor:Llewa/util/DiskLruCache$Editor;
    #setter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v1, v0}, Llewa/util/DiskLruCache$Entry;->access$702(Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Editor;

    .line 537
    iget-object v2, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 519
    .end local v0           #editor:Llewa/util/DiskLruCache$Editor;
    .end local v1           #entry:Llewa/util/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 529
    .restart local v1       #entry:Llewa/util/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v1}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Llewa/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Llewa/util/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 621
    const/16 v0, 0x7d0

    .line 622
    .local v0, REDUNDANT_OP_COMPACT_THRESHOLD:I
    iget v1, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Llewa/util/DiskLruCache;
    .locals 8
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_0
    if-gtz p2, :cond_1

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_1
    new-instance v0, Llewa/util/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llewa/util/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 319
    .local v0, cache:Llewa/util/DiskLruCache;
    iget-object v1, v0, Llewa/util/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    :try_start_0
    invoke-direct {v0}, Llewa/util/DiskLruCache;->readJournal()V

    .line 322
    invoke-direct {v0}, Llewa/util/DiskLruCache;->processJournal()V

    .line 323
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Llewa/util/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 337
    .end local v0           #cache:Llewa/util/DiskLruCache;
    .local v6, cache:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 326
    .end local v6           #cache:Ljava/lang/Object;
    .restart local v0       #cache:Llewa/util/DiskLruCache;
    :catch_0
    move-exception v7

    .line 329
    .local v7, journalIsCorrupt:Ljava/io/IOException;
    invoke-virtual {v0}, Llewa/util/DiskLruCache;->delete()V

    .line 334
    .end local v7           #journalIsCorrupt:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 335
    new-instance v0, Llewa/util/DiskLruCache;

    .end local v0           #cache:Llewa/util/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llewa/util/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 336
    .restart local v0       #cache:Llewa/util/DiskLruCache;
    invoke-direct {v0}, Llewa/util/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 337
    .restart local v6       #cache:Ljava/lang/Object;
    goto :goto_0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v3, p0, Llewa/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Llewa/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 406
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/util/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/DiskLruCache$Entry;

    .line 408
    .local v0, entry:Llewa/util/DiskLruCache$Entry;
    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 409
    const/4 v2, 0x0

    .local v2, t:I
    :goto_1
    iget v3, p0, Llewa/util/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 410
    iget-wide v3, p0, Llewa/util/DiskLruCache;->size:J

    #getter for: Llewa/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$1000(Llewa/util/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Llewa/util/DiskLruCache;->size:J

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    .end local v2           #t:I
    :cond_1
    const/4 v3, 0x0

    #setter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llewa/util/DiskLruCache$Entry;->access$702(Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Editor;

    .line 414
    const/4 v2, 0x0

    .restart local v2       #t:I
    :goto_2
    iget v3, p0, Llewa/util/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 415
    invoke-virtual {v0, v2}, Llewa/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llewa/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 416
    invoke-virtual {v0, v2}, Llewa/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llewa/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 418
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 421
    .end local v0           #entry:Llewa/util/DiskLruCache$Entry;
    .end local v2           #t:I
    :cond_3
    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v2, result:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 222
    .local v0, c:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 223
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 224
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 231
    .local v1, length:I
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 232
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 228
    .end local v1           #length:I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 198
    .local v2, writer:Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 200
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 201
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    .end local v0           #buffer:[C
    .end local v1           #count:I
    .end local v2           #writer:Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v3

    .line 203
    .restart local v0       #buffer:[C
    .restart local v1       #count:I
    .restart local v2       #writer:Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 205
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v3
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Llewa/util/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 343
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Llewa/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, magic:Ljava/lang/String;
    invoke-static {v3}, Llewa/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, version:Ljava/lang/String;
    invoke-static {v3}, Llewa/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, appVersionString:Ljava/lang/String;
    invoke-static {v3}, Llewa/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, valueCountString:Ljava/lang/String;
    invoke-static {v3}, Llewa/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, blank:Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llewa/util/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llewa/util/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 353
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v0           #appVersionString:Ljava/lang/String;
    .end local v1           #blank:Ljava/lang/String;
    .end local v4           #magic:Ljava/lang/String;
    .end local v5           #valueCountString:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Llewa/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 359
    .restart local v0       #appVersionString:Ljava/lang/String;
    .restart local v1       #blank:Ljava/lang/String;
    .restart local v4       #magic:Ljava/lang/String;
    .restart local v5       #valueCountString:Ljava/lang/String;
    .restart local v6       #version:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Llewa/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Llewa/util/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v2

    .line 365
    .local v2, endOfJournal:Ljava/io/EOFException;
    invoke-static {v3}, Llewa/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 367
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 370
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, parts:[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 372
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_0
    aget-object v1, v2, v8

    .line 376
    .local v1, key:Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 377
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 381
    :cond_2
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/DiskLruCache$Entry;

    .line 382
    .local v0, entry:Llewa/util/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 383
    new-instance v0, Llewa/util/DiskLruCache$Entry;

    .end local v0           #entry:Llewa/util/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Llewa/util/DiskLruCache$Entry;-><init>(Llewa/util/DiskLruCache;Ljava/lang/String;Llewa/util/DiskLruCache$1;)V

    .line 384
    .restart local v0       #entry:Llewa/util/DiskLruCache$Entry;
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Llewa/util/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 388
    #setter for: Llewa/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v8}, Llewa/util/DiskLruCache$Entry;->access$602(Llewa/util/DiskLruCache$Entry;Z)Z

    .line 389
    #setter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0, v7}, Llewa/util/DiskLruCache$Entry;->access$702(Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Editor;

    .line 390
    array-length v3, v2

    invoke-static {v2, v5, v3}, Llewa/util/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #calls: Llewa/util/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Llewa/util/DiskLruCache$Entry;->access$800(Llewa/util/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 392
    new-instance v3, Llewa/util/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Llewa/util/DiskLruCache$Editor;-><init>(Llewa/util/DiskLruCache;Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$1;)V

    #setter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llewa/util/DiskLruCache$Entry;->access$702(Llewa/util/DiskLruCache$Entry;Llewa/util/DiskLruCache$Editor;)Llewa/util/DiskLruCache$Editor;

    goto :goto_0

    .line 393
    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 396
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 432
    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Llewa/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 433
    .local v2, writer:Ljava/io/Writer;
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    iget v3, p0, Llewa/util/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    iget v3, p0, Llewa/util/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/DiskLruCache$Entry;

    .line 444
    .local v0, entry:Llewa/util/DiskLruCache$Entry;
    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llewa/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$1100(Llewa/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 428
    .end local v0           #entry:Llewa/util/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 447
    .restart local v0       #entry:Llewa/util/DiskLruCache$Entry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llewa/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$1100(Llewa/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Llewa/util/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v0           #entry:Llewa/util/DiskLruCache$Entry;
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 452
    iget-object v3, p0, Llewa/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Llewa/util/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 453
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Llewa/util/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v3, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    :goto_0
    iget-wide v1, p0, Llewa/util/DiskLruCache;->size:J

    iget-wide v3, p0, Llewa/util/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 702
    iget-object v1, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 703
    .local v0, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Llewa/util/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Llewa/util/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 705
    .end local v0           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Llewa/util/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 718
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 697
    :goto_0
    monitor-exit p0

    return-void

    .line 689
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/DiskLruCache$Entry;

    .line 690
    .local v0, entry:Llewa/util/DiskLruCache$Entry;
    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 691
    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Llewa/util/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 686
    .end local v0           #entry:Llewa/util/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 694
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Llewa/util/DiskLruCache;->trimToSize()V

    .line 695
    iget-object v2, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 696
    const/4 v2, 0x0

    iput-object v2, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-virtual {p0}, Llewa/util/DiskLruCache;->close()V

    .line 714
    iget-object v0, p0, Llewa/util/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Llewa/util/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 715
    return-void
.end method

.method public edit(Ljava/lang/String;)Llewa/util/DiskLruCache$Editor;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Llewa/util/DiskLruCache;->edit(Ljava/lang/String;J)Llewa/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llewa/util/DiskLruCache;->checkNotClosed()V

    .line 678
    invoke-direct {p0}, Llewa/util/DiskLruCache;->trimToSize()V

    .line 679
    iget-object v0, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Llewa/util/DiskLruCache$Snapshot;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 475
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llewa/util/DiskLruCache;->checkNotClosed()V

    .line 476
    invoke-direct {p0, p1}, Llewa/util/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llewa/util/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .local v8, entry:Llewa/util/DiskLruCache$Entry;
    if-nez v8, :cond_1

    .line 507
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 482
    :cond_1
    :try_start_1
    #getter for: Llewa/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Llewa/util/DiskLruCache$Entry;->access$600(Llewa/util/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget v1, p0, Llewa/util/DiskLruCache;->valueCount:I

    new-array v5, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    .local v5, ins:[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_2
    iget v1, p0, Llewa/util/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_2

    .line 494
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Llewa/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 493
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 496
    :catch_0
    move-exception v7

    .line 498
    .local v7, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 501
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_3
    iget v0, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    .line 502
    iget-object v0, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 503
    invoke-direct {p0}, Llewa/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Llewa/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Llewa/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 507
    :cond_3
    new-instance v0, Llewa/util/DiskLruCache$Snapshot;

    #getter for: Llewa/util/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Llewa/util/DiskLruCache$Entry;->access$1200(Llewa/util/DiskLruCache$Entry;)J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Llewa/util/DiskLruCache$Snapshot;-><init>(Llewa/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Llewa/util/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 475
    .end local v5           #ins:[Ljava/io/InputStream;
    .end local v8           #entry:Llewa/util/DiskLruCache$Entry;
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Llewa/util/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Llewa/util/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llewa/util/DiskLruCache;->checkNotClosed()V

    .line 634
    invoke-direct {p0, p1}, Llewa/util/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/DiskLruCache$Entry;

    .line 636
    .local v0, entry:Llewa/util/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    #getter for: Llewa/util/DiskLruCache$Entry;->currentEditor:Llewa/util/DiskLruCache$Editor;
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$700(Llewa/util/DiskLruCache$Entry;)Llewa/util/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 637
    :cond_0
    const/4 v3, 0x0

    .line 657
    :goto_0
    monitor-exit p0

    return v3

    .line 640
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    iget v3, p0, Llewa/util/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 641
    invoke-virtual {v0, v2}, Llewa/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 642
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 643
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v0           #entry:Llewa/util/DiskLruCache$Entry;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 645
    .restart local v0       #entry:Llewa/util/DiskLruCache$Entry;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    :cond_2
    :try_start_2
    iget-wide v3, p0, Llewa/util/DiskLruCache;->size:J

    #getter for: Llewa/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$1000(Llewa/util/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Llewa/util/DiskLruCache;->size:J

    .line 646
    #getter for: Llewa/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llewa/util/DiskLruCache$Entry;->access$1000(Llewa/util/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 649
    .end local v1           #file:Ljava/io/File;
    :cond_3
    iget v3, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llewa/util/DiskLruCache;->redundantOpCount:I

    .line 650
    iget-object v3, p0, Llewa/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 651
    iget-object v3, p0, Llewa/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-direct {p0}, Llewa/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 654
    iget-object v3, p0, Llewa/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Llewa/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Llewa/util/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
