.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    return-void
.end method
