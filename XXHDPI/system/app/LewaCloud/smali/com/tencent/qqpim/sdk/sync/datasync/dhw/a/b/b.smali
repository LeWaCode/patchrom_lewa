.class public final enum Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

.field public static final enum b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

.field public static final enum c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

.field private static final synthetic d:[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    const-string v1, "MDF"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->d:[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->d:[Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
