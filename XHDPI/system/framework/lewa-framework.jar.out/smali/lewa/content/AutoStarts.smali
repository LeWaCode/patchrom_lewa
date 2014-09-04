.class public Llewa/content/AutoStarts;
.super Llewa/util/SimpleXmlParser;
.source "AutoStarts.java"


# static fields
.field private static sGlobalLock:Ljava/lang/Object;

.field private static sInstance:Llewa/content/AutoStarts;


# instance fields
.field private mActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/content/AutoStarts;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Llewa/util/SimpleXmlParser;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not execute a non public method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Llewa/util/SimpleXmlParser;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Llewa/content/AutoStarts;->mIntents:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Llewa/content/AutoStarts;->mActions:Ljava/util/Set;

    .line 47
    const v0, 0x90e0001

    const-string v1, "intents"

    const-string v2, "intent"

    invoke-virtual {p0, p1, v0, v1, v2}, Llewa/content/AutoStarts;->parseXml(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Llewa/content/AutoStarts;
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    sget-object v1, Llewa/content/AutoStarts;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Llewa/content/AutoStarts;->sInstance:Llewa/content/AutoStarts;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Llewa/content/AutoStarts;

    invoke-direct {v0, p0}, Llewa/content/AutoStarts;-><init>(Landroid/content/Context;)V

    sput-object v0, Llewa/content/AutoStarts;->sInstance:Llewa/content/AutoStarts;

    .line 28
    :cond_0
    sget-object v0, Llewa/content/AutoStarts;->sInstance:Llewa/content/AutoStarts;

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Llewa/content/AutoStarts;->mActions:Ljava/util/Set;

    return-object v0
.end method

.method public getIntents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Llewa/content/AutoStarts;->mIntents:Ljava/util/Set;

    return-object v0
.end method

.method protected processItemElement(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 6
    .parameter "parser"

    .prologue
    const/4 v5, 0x0

    .line 51
    const-string v2, "action"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "SimpleXmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing action attribute on <intent> tag at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Llewa/content/AutoStarts;->mXmlResId:I

    invoke-virtual {p0, v4}, Llewa/content/AutoStarts;->getResourceLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v2, 0x0

    .line 66
    :goto_0
    return v2

    .line 58
    :cond_0
    iget-object v2, p0, Llewa/content/AutoStarts;->mActions:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v2, "scheme"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, scheme:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Llewa/content/AutoStarts;->mIntents:Ljava/util/Set;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, p0, Llewa/content/AutoStarts;->mIntents:Ljava/util/Set;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-static {v1, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
