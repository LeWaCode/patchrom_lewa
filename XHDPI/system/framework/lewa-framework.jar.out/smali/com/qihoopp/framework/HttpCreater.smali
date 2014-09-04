.class public Lcom/qihoopp/framework/HttpCreater;
.super Ljava/lang/Object;
.source "HttpCreater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoopp/framework/HttpCreater$MyHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "HttpCreater"

    sput-object v0, Lcom/qihoopp/framework/HttpCreater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/qihoopp/framework/HttpCreater;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/qihoopp/framework/HttpLoaderCallback;)Lcom/qihoopp/framework/HttpLoadThread;
    .locals 7
    .parameter "context"
    .parameter "mode"
    .parameter "url"
    .parameter
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qihoopp/framework/HttpRequestMode;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qihoopp/framework/HttpLoaderCallback;",
            ")",
            "Lcom/qihoopp/framework/HttpLoadThread;"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/qihoopp/framework/HttpLoadThread;

    new-instance v2, Lcom/qihoopp/framework/HttpCreater$MyHandler;

    invoke-direct {v2, p6, p0}, Lcom/qihoopp/framework/HttpCreater$MyHandler;-><init>(Lcom/qihoopp/framework/HttpLoaderCallback;Lcom/qihoopp/framework/HttpCreater;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qihoopp/framework/HttpLoadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
