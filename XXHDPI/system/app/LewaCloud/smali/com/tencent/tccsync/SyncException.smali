.class public Lcom/tencent/tccsync/SyncException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0xf4242L


# instance fields
.field private error:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u540c\u6b65\u5f15\u64ce\u51fa\u9519\uff0c\u9519\u8bef\u7801\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/tccsync/SyncException;->error:I

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/SyncException;->error:I

    return v0
.end method
