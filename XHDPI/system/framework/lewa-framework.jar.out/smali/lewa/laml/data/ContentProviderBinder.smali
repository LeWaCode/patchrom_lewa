.class public Llewa/laml/data/ContentProviderBinder;
.super Llewa/laml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/ContentProviderBinder$Variable;,
        Llewa/laml/data/ContentProviderBinder$QueryHandler;,
        Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;,
        Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;,
        Llewa/laml/data/ContentProviderBinder$ChangeObserver;,
        Llewa/laml/data/ContentProviderBinder$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field public mChangeObserver:Llewa/laml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Llewa/laml/util/IndexedNumberVariable;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLock:Ljava/lang/Object;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDependency:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field private mNeedsRequery:Z

.field protected mNotifyUri:Ljava/lang/String;

.field protected mOrder:Ljava/lang/String;

.field private mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Llewa/laml/data/ContentProviderBinder$QueryHandler;

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Llewa/laml/util/TextFormatter;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/ContentProviderBinder$Variable;",
            ">;"
        }
    .end annotation
.end field

.field protected mWhereFormatter:Llewa/laml/util/TextFormatter;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/laml/data/ContentProviderBinder;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 3
    .parameter "root"
    .parameter "l"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Llewa/laml/data/VariableBinder;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 46
    new-instance v1, Llewa/laml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v1, p0}, Llewa/laml/data/ContentProviderBinder$ChangeObserver;-><init>(Llewa/laml/data/ContentProviderBinder;)V

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mChangeObserver:Llewa/laml/data/ContentProviderBinder$ChangeObserver;

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    .line 60
    new-instance v1, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;-><init>(Llewa/laml/data/ContentProviderBinder;Llewa/laml/data/ContentProviderBinder$1;)V

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v0, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    .line 97
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 99
    :try_start_0
    new-instance v1, Llewa/laml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Llewa/laml/data/ContentProviderBinder$QueryHandler;-><init>(Llewa/laml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mQueryHandler:Llewa/laml/data/ContentProviderBinder$QueryHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iput-object p2, p0, Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    .line 103
    return-void

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0
    .parameter "node"
    .parameter "root"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p2, p3}, Llewa/laml/data/ContentProviderBinder;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 113
    invoke-direct {p0, p1}, Llewa/laml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 114
    return-void
.end method

.method static synthetic access$100(Llewa/laml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$200(Llewa/laml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Llewa/laml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->updateVariables()V

    return-void
.end method

.method static synthetic access$400(Llewa/laml/data/ContentProviderBinder;)Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    return-object v0
.end method

.method static synthetic access$500(Llewa/laml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Llewa/laml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 117
    iget v2, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v2, :cond_1

    .line 118
    iget-object v2, p0, Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Llewa/laml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Llewa/laml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 120
    .local v0, elapsedTime:J
    iget v2, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 121
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->startQuery()V

    .line 122
    const-wide/16 v0, 0x0

    .line 124
    :cond_0
    iget-object v2, p0, Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Llewa/laml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .end local v0           #elapsedTime:J
    :cond_1
    return-void
.end method

.method private closeCursor()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 131
    iget v0, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 132
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Llewa/laml/data/ContentProviderBinder;->registerObserver(Landroid/database/Cursor;Z)V

    .line 133
    :cond_0
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 136
    :cond_1
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string v0, "ContentProviderBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Llewa/laml/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 145
    const-string v0, "dependency"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    .line 146
    const-string v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v4

    .line 147
    .local v4, uriExp:Llewa/laml/data/Expression;
    const-string v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v5

    .line 148
    .local v5, uriFormatExp:Llewa/laml/data/Expression;
    new-instance v0, Llewa/laml/util/TextFormatter;

    const-string v1, "uri"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uriFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uriParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Expression;Llewa/laml/data/Expression;)V

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mUriFormatter:Llewa/laml/util/TextFormatter;

    .line 151
    const-string v0, "columns"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v13

    :goto_0
    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 153
    new-instance v6, Llewa/laml/util/TextFormatter;

    const-string v0, "where"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "whereFormat"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "whereParas"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "whereExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v10

    const-string v0, "whereFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Expression;Llewa/laml/data/Expression;)V

    iput-object v6, p0, Llewa/laml/data/ContentProviderBinder;->mWhereFormatter:Llewa/laml/util/TextFormatter;

    .line 158
    const-string v0, "args"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 159
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v13

    :goto_1
    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 161
    const-string v0, "order"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 162
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v12, v13

    .end local v12           #tmp:Ljava/lang/String;
    :cond_1
    iput-object v12, p0, Llewa/laml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 164
    const-string v0, "countName"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .restart local v12       #tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v12, v13

    .end local v12           #tmp:Ljava/lang/String;
    :cond_2
    iput-object v12, p0, Llewa/laml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 167
    const-string v0, "notifyUri"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .restart local v12       #tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    iput-object v13, p0, Llewa/laml/data/ContentProviderBinder;->mNotifyUri:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 171
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    .line 173
    :cond_3
    const-string v0, "updateInterval"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 174
    iget v0, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_4

    .line 175
    new-instance v0, Llewa/laml/data/ContentProviderBinder$1;

    invoke-direct {v0, p0}, Llewa/laml/data/ContentProviderBinder$1;-><init>(Llewa/laml/data/ContentProviderBinder;)V

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 180
    :cond_4
    invoke-direct {p0, p1}, Llewa/laml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 181
    return-void

    .line 152
    :cond_5
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :cond_6
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v13, v12

    .line 168
    goto :goto_2
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v4, "Variable"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 185
    .local v3, variables:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 186
    new-instance v2, Llewa/laml/data/ContentProviderBinder$Variable;

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v2, v4, v5}, Llewa/laml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    .line 187
    .local v2, v:Llewa/laml/data/ContentProviderBinder$Variable;
    invoke-virtual {p0, v2}, Llewa/laml/data/ContentProviderBinder;->addVariable(Llewa/laml/data/ContentProviderBinder$Variable;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v2           #v:Llewa/laml/data/ContentProviderBinder$Variable;
    :cond_0
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 193
    iget-boolean v1, p0, Llewa/laml/data/ContentProviderBinder;->mFinished:Z

    if-nez v1, :cond_4

    .line 194
    if-eqz p1, :cond_2

    .line 195
    iget-object v2, p0, Llewa/laml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    :try_start_0
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->closeCursor()V

    .line 198
    iput-object p1, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 199
    iget v1, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    if-ne v1, v4, :cond_0

    .line 200
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Llewa/laml/data/ContentProviderBinder;->registerObserver(Landroid/database/Cursor;Z)V

    .line 201
    :cond_0
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->updateVariables()V

    .line 202
    iget v1, p0, Llewa/laml/data/ContentProviderBinder;->mUpdateInterval:I

    if-eq v1, v4, :cond_1

    .line 203
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 206
    :cond_1
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->requestUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_2
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v2, p0, Llewa/laml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 218
    :cond_3
    :goto_1
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ContentProviderBinder"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 215
    :cond_4
    if-eqz p1, :cond_3

    .line 216
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private registerObserver(Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "c"
    .parameter "reg"

    .prologue
    .line 221
    if-eqz p1, :cond_1

    .line 222
    if-eqz p2, :cond_2

    .line 223
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mNotifyUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mNotifyUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 226
    :cond_0
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mChangeObserver:Llewa/laml/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 227
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mChangeObserver:Llewa/laml/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method private updateVariables()V
    .locals 13

    .prologue
    .line 236
    iget-object v10, p0, Llewa/laml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10

    .line 238
    :try_start_0
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .local v3, count:I
    if-nez v3, :cond_2

    .line 239
    .end local v3           #count:I
    :cond_0
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v9, :cond_1

    .line 240
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v11, v12}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 241
    :cond_1
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llewa/laml/data/ContentProviderBinder$Variable;

    .line 242
    .local v7, v:Llewa/laml/data/ContentProviderBinder$Variable;
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v7, v9}, Llewa/laml/data/ContentProviderBinder$Variable;->setNull(Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 299
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #v:Llewa/laml/data/ContentProviderBinder$Variable;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 247
    .restart local v3       #count:I
    :cond_2
    :try_start_1
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v9, :cond_3

    .line 248
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v11, v3

    invoke-virtual {v9, v11, v12}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 249
    :cond_3
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llewa/laml/data/ContentProviderBinder$Variable;

    .line 250
    .restart local v7       #v:Llewa/laml/data/ContentProviderBinder$Variable;
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget v11, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mRow:I

    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    iget-object v2, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .local v2, column:Ljava/lang/String;
    :try_start_2
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 262
    .local v1, col:I
    iget v9, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mType:I

    sparse-switch v9, :sswitch_data_0

    .line 285
    :goto_2
    const-string v9, "ContentProviderBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalide type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v7, v9}, Llewa/laml/data/ContentProviderBinder$Variable;->setNull(Llewa/laml/ScreenElementRoot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 289
    .end local v1           #col:I
    :catch_0
    move-exception v4

    .line 290
    .local v4, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v9, "ContentProviderBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "image blob column decode error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 264
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #col:I
    :sswitch_0
    :try_start_4
    iget-object v9, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    iget-object v11, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 291
    .end local v1           #col:I
    :catch_1
    move-exception v4

    .line 292
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v9, "ContentProviderBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "column does not exist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 267
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #col:I
    :sswitch_1
    :try_start_6
    iget-object v9, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v11, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-double v11, v11

    invoke-virtual {v9, v11, v12}, Llewa/laml/util/IndexedNumberVariable;->set(D)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 293
    .end local v1           #col:I
    :catch_2
    move-exception v4

    .line 294
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v9, "ContentProviderBinder"

    const-string v11, "failed to get value from cursor"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 270
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #col:I
    :sswitch_2
    :try_start_8
    iget-object v9, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v11, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    long-to-double v11, v11

    invoke-virtual {v9, v11, v12}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_1

    .line 273
    :sswitch_3
    iget-object v9, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v11, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v9, v11, v12}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_1

    .line 276
    :sswitch_4
    iget-object v9, v7, Llewa/laml/data/ContentProviderBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v11, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_1

    .line 279
    :sswitch_5
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 280
    .local v8, valueBytes:[B
    iget-object v9, p0, Llewa/laml/data/ContentProviderBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v7, v9}, Llewa/laml/data/ContentProviderBinder$Variable;->getImageElement(Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ImageScreenElement;

    move-result-object v6

    .line 281
    .local v6, image:Llewa/laml/elements/ImageScreenElement;
    const/4 v9, 0x0

    array-length v11, v8

    invoke-static {v8, v9, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6, v0}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 299
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #col:I
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #count:I
    .end local v6           #image:Llewa/laml/elements/ImageScreenElement;
    .end local v7           #v:Llewa/laml/data/ContentProviderBinder$Variable;
    .end local v8           #valueBytes:[B
    :cond_5
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 300
    return-void

    .line 262
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x3e9 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected addVariable(Llewa/laml/data/ContentProviderBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 303
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public createCountVar()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    .line 309
    return-void

    .line 307
    :cond_0
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->closeCursor()V

    .line 313
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->finish()V

    .line 315
    return-void
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->init()V

    .line 327
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->startQuery()V

    .line 329
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Llewa/laml/data/ContentProviderBinder;->mFinished:Z

    if-nez v0, :cond_0

    .line 335
    iget-boolean v0, p0, Llewa/laml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->isGlobalThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->pause()V

    .line 345
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->refresh()V

    .line 350
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->startQuery()V

    .line 351
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->resume()V

    .line 355
    iget-boolean v0, p0, Llewa/laml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->startQuery()V

    .line 357
    :cond_0
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->checkUpdate()V

    .line 358
    return-void
.end method

.method public startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 362
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mQueryHandler:Llewa/laml/data/ContentProviderBinder$QueryHandler;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mQueryHandler:Llewa/laml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Llewa/laml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 364
    :cond_0
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mUriFormatter:Llewa/laml/util/TextFormatter;

    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v2}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 365
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "datahub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mWhereFormatter:Llewa/laml/util/TextFormatter;

    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v2}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mQueryHandler:Llewa/laml/data/ContentProviderBinder$QueryHandler;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder;->mQueryHandler:Llewa/laml/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Llewa/laml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Llewa/laml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Llewa/laml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Llewa/laml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llewa/laml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 377
    invoke-direct {p0}, Llewa/laml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Llewa/laml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Llewa/laml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Llewa/laml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Llewa/laml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    goto :goto_1
.end method
