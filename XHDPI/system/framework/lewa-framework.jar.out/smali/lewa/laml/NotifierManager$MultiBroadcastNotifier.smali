.class public Llewa/laml/NotifierManager$MultiBroadcastNotifier;
.super Llewa/laml/NotifierManager$BroadcastNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBroadcastNotifier"
.end annotation


# instance fields
.field private mIntents:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "intents"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Llewa/laml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 275
    iput-object p2, p0, Llewa/laml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .line 276
    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 5

    .prologue
    .line 279
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v0, p0, Llewa/laml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 281
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
