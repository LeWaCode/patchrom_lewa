.class public final Lcom/tencent/qqpim/sdk/libs/netengine/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 5

    const/16 v4, 0xf

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->b:I

    iput v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->c:I

    iput v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->d:I

    iput v3, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->e:I

    iput v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->d:I

    iput v3, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->b:I

    iput v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->c:I

    return-void
.end method

.method public static a(II[BLjava/lang/String;II)Lcom/tencent/qqpim/sdk/libs/netengine/d;
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/d;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->d:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->e:I

    iput-object p3, v0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->a:Ljava/lang/String;

    iput p4, v0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->b:I

    iput p5, v0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->c:I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->e:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/d;->c:I

    return v0
.end method
