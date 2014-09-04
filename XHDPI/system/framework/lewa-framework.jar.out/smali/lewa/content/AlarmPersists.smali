.class public Llewa/content/AlarmPersists;
.super Llewa/util/SimpleXmlParser;
.source "AlarmPersists.java"


# static fields
.field private static sGlobalLock:Ljava/lang/Object;

.field private static sInstance:Llewa/content/AlarmPersists;


# instance fields
.field private mPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/content/AlarmPersists;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Llewa/util/SimpleXmlParser;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not execute a non public method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Llewa/util/SimpleXmlParser;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Llewa/content/AlarmPersists;->mPackages:Ljava/util/Set;

    .line 47
    const v0, 0x90e0003

    const-string v1, "packages"

    const-string v2, "package"

    invoke-virtual {p0, p1, v0, v1, v2}, Llewa/content/AlarmPersists;->parseXml(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Llewa/content/AlarmPersists;
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    sget-object v1, Llewa/content/AlarmPersists;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Llewa/content/AlarmPersists;->sInstance:Llewa/content/AlarmPersists;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Llewa/content/AlarmPersists;

    invoke-direct {v0, p0}, Llewa/content/AlarmPersists;-><init>(Landroid/content/Context;)V

    sput-object v0, Llewa/content/AlarmPersists;->sInstance:Llewa/content/AlarmPersists;

    .line 33
    :cond_0
    sget-object v0, Llewa/content/AlarmPersists;->sInstance:Llewa/content/AlarmPersists;

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPackages()Ljava/util/Set;
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
    .line 38
    iget-object v0, p0, Llewa/content/AlarmPersists;->mPackages:Ljava/util/Set;

    return-object v0
.end method

.method protected processItemElement(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 4
    .parameter "parser"

    .prologue
    .line 51
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, packageName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "SimpleXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing action attribute on <package> tag at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Llewa/content/AlarmPersists;->mXmlResId:I

    invoke-virtual {p0, v3}, Llewa/content/AlarmPersists;->getResourceLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    .line 59
    :goto_0
    return v1

    .line 58
    :cond_0
    iget-object v1, p0, Llewa/content/AlarmPersists;->mPackages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v1, 0x1

    goto :goto_0
.end method
