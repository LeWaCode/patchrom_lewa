.class public final enum Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field public static final enum b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field public static final enum c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private static enum d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private static final synthetic f:[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const-string v1, "DATA_STATUS_POST"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const-string v1, "DATA_STATUS_ERROR"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const-string v1, "DATA_TATUS_DATANULL"

    invoke-direct {v0, v1, v5, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const-string v1, "DATA_STATUS_END"

    invoke-direct {v0, v1, v4, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    new-array v0, v6, [Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->f:[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->f:[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->e:I

    return v0
.end method
