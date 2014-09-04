.class Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/NetworkDispatcher$DispatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDispatchTask"
.end annotation


# instance fields
.field private final hits:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Llewa/track/Hit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Llewa/track/NetworkDispatcher$DispatcherThread;


# direct methods
.method public constructor <init>(Llewa/track/NetworkDispatcher$DispatcherThread;[Llewa/track/Hit;)V
    .locals 5
    .parameter
    .parameter "h"

    .prologue
    .line 174
    iput-object p1, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    .line 175
    move-object v0, p2

    .local v0, arr$:[Llewa/track/Hit;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 176
    .local v1, hit:Llewa/track/Hit;
    iget-object v4, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v1           #hit:Llewa/track/Hit;
    :cond_0
    return-void
.end method

.method private dispatchSomePendingHits(Z)V
    .locals 14
    .parameter "paramBoolean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 223
    const-string v11, "Tracker"

    const-string v12, "dispatching hits in dry run mode"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const/4 v2, 0x0

    .line 228
    .local v2, i:I
    :goto_0
    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v2, v11, :cond_9

    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I
    invoke-static {v11}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$900(Llewa/track/NetworkDispatcher$DispatcherThread;)I

    move-result v11

    if-ge v2, v11, :cond_9

    .line 229
    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llewa/track/Hit;

    .line 230
    .local v7, localHit:Llewa/track/Hit;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Llewa/track/NetworkDispatcher;->access$200()Lorg/apache/http/HttpHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Llewa/track/Hit;->hitString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, URL:Ljava/lang/String;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 232
    const-string v11, "Tracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dispatchPendingHits URL = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \n hit size is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v0, v11, v12}, Llewa/track/Utils;->addQueueTimeParameter(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, str1:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v11, "GET"

    invoke-direct {v5, v11, v9}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v5, localBasicHttpEntityEnclosingRequest:Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    invoke-static {}, Llewa/track/NetworkDispatcher;->access$200()Lorg/apache/http/HttpHost;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, str4:Ljava/lang/String;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 240
    const-string v11, "Tracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dispatchPendingHits Host = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    invoke-static {}, Llewa/track/NetworkDispatcher;->access$200()Lorg/apache/http/HttpHost;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v11

    const/16 v12, 0x50

    if-eq v11, v12, :cond_3

    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Llewa/track/NetworkDispatcher;->access$200()Lorg/apache/http/HttpHost;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 247
    :cond_3
    const-string v11, "Host"

    invoke-virtual {v5, v11, v10}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v11, "User-Agent"

    iget-object v12, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->userAgent:Ljava/lang/String;
    invoke-static {v12}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$1000(Llewa/track/NetworkDispatcher$DispatcherThread;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 254
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v8, localStringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v6, v1, v3

    .line 257
    .local v6, localHeader:Lorg/apache/http/Header;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    .end local v6           #localHeader:Lorg/apache/http/Header;
    :cond_4
    invoke-virtual {v5}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 264
    const-string v11, "Tracker"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1           #arr$:[Lorg/apache/http/Header;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #localStringBuffer:Ljava/lang/StringBuffer;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x2000

    if-le v11, v12, :cond_7

    .line 267
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 268
    const-string v11, "Tracker"

    const-string v12, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_6
    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
    invoke-static {v11}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$1100(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    move-result-object v11

    invoke-virtual {v11}, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->requestSent()V

    .line 228
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 271
    :cond_7
    if-eqz p1, :cond_8

    .line 272
    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
    invoke-static {v11}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$1100(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    move-result-object v11

    invoke-virtual {v11}, Llewa/track/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->requestSent()V

    goto :goto_2

    .line 275
    :cond_8
    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Llewa/track/PipelinedRequester;
    invoke-static {v11}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$800(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/PipelinedRequester;

    move-result-object v11

    invoke-virtual {v11, v5}, Llewa/track/PipelinedRequester;->addRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_2

    .line 279
    .end local v0           #URL:Ljava/lang/String;
    .end local v5           #localBasicHttpEntityEnclosingRequest:Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    .end local v7           #localHit:Llewa/track/Hit;
    .end local v9           #str1:Ljava/lang/String;
    .end local v10           #str4:Ljava/lang/String;
    :cond_9
    if-nez p1, :cond_a

    .line 280
    iget-object v11, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Llewa/track/PipelinedRequester;
    invoke-static {v11}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$800(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/PipelinedRequester;

    move-result-object v11

    invoke-virtual {v11}, Llewa/track/PipelinedRequester;->sendRequests()V

    .line 282
    :cond_a
    return-void
.end method


# virtual methods
.method public removeNextHit()Llewa/track/Hit;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/track/Hit;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 181
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #setter for: Llewa/track/NetworkDispatcher$DispatcherThread;->currentTask:Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    invoke-static {v5, p0}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$502(Llewa/track/NetworkDispatcher$DispatcherThread;Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;)Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 184
    const-wide/16 v1, 0x0

    .line 185
    .local v1, l:J
    :try_start_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 186
    .local v4, r:Ljava/util/Random;
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->lastStatusCode:I
    invoke-static {v5}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$700(Llewa/track/NetworkDispatcher$DispatcherThread;)I

    move-result v5

    const/16 v6, 0x1f4

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->lastStatusCode:I
    invoke-static {v5}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$700(Llewa/track/NetworkDispatcher$DispatcherThread;)I

    move-result v5

    const/16 v6, 0x1f7

    if-ne v5, v6, :cond_3

    .line 188
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J
    invoke-static {v7}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$400(Llewa/track/NetworkDispatcher$DispatcherThread;)J

    move-result-wide v7

    mul-long v1, v5, v7

    .line 189
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J
    invoke-static {v5}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$400(Llewa/track/NetworkDispatcher$DispatcherThread;)J

    move-result-wide v5

    const-wide/16 v7, 0x100

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 190
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    const-wide/16 v6, 0x2

    invoke-static {v5, v6, v7}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$414(Llewa/track/NetworkDispatcher$DispatcherThread;J)J

    .line 197
    :cond_1
    :goto_1
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    const-string v5, "Tracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " sleep l = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 200
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->dispatchSomePendingHits(Z)V

    .line 182
    .end local v4           #r:Ljava/util/Random;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .restart local v4       #r:Ljava/util/Random;
    :cond_3
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->lastStatusCode:I
    invoke-static {v5}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$700(Llewa/track/NetworkDispatcher$DispatcherThread;)I

    move-result v5

    const/16 v6, 0x194

    if-ne v5, v6, :cond_5

    .line 192
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    const-string v5, "Tracker"

    const-string v6, "error the serve has return 404 "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 202
    .end local v4           #r:Ljava/util/Random;
    :catch_0
    move-exception v3

    .line 203
    .local v3, localInterruptedException:Ljava/lang/InterruptedException;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    const-string v5, "Tracker"

    const-string v6, "Couldn\'t sleep."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v1           #l:J
    .end local v3           #localInterruptedException:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Llewa/track/PipelinedRequester;
    invoke-static {v5}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$800(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/PipelinedRequester;

    move-result-object v5

    invoke-virtual {v5}, Llewa/track/PipelinedRequester;->finishedCurrentRequests()V

    .line 215
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    #getter for: Llewa/track/NetworkDispatcher$DispatcherThread;->callbacks:Llewa/track/IDispatcher$Callbacks;
    invoke-static {v5}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$600(Llewa/track/NetworkDispatcher$DispatcherThread;)Llewa/track/IDispatcher$Callbacks;

    move-result-object v5

    invoke-interface {v5}, Llewa/track/IDispatcher$Callbacks;->dispatchFinished()V

    .line 217
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    const-wide/16 v6, 0x0

    #setter for: Llewa/track/NetworkDispatcher$DispatcherThread;->retryInterval:J
    invoke-static {v5, v6, v7}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$402(Llewa/track/NetworkDispatcher$DispatcherThread;J)J

    .line 218
    return-void

    .line 195
    .restart local v1       #l:J
    .restart local v4       #r:Ljava/util/Random;
    :cond_5
    :try_start_1
    iget-object v5, p0, Llewa/track/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Llewa/track/NetworkDispatcher$DispatcherThread;

    const-wide/16 v6, 0x2

    invoke-static {v5, v6, v7}, Llewa/track/NetworkDispatcher$DispatcherThread;->access$414(Llewa/track/NetworkDispatcher$DispatcherThread;J)J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 206
    .end local v4           #r:Ljava/util/Random;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 208
    :catch_2
    move-exception v5

    goto :goto_2
.end method
