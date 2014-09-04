.class final Lcom/yulore/yellowsdkapi/http/ThreadPoolManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;-><init>(B)V

    sput-object v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager$a;->a:Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;
    .locals 1

    sget-object v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager$a;->a:Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;

    return-object v0
.end method
