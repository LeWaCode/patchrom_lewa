.class public Lcom/tencent/tccsync/TccSyncMapInfo;
.super Ljava/lang/Object;


# instance fields
.field private iDbType:I

.field private iLastAnchor:J

.field private iLastSyncError:I

.field private iLastSyncMapItemNum:J

.field private iLastSyncTime:J

.field private iLastSyncType:I

.field private iMapVer:I

.field private isReLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDbType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iDbType:I

    return-void
.end method

.method private setLastAnchor(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastAnchor:J

    return-void
.end method

.method private setLastSyncError(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncError:I

    return-void
.end method

.method private setLastSyncMapItemNum(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncMapItemNum:J

    return-void
.end method

.method private setLastSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncTime:J

    return-void
.end method

.method private setLastSyncType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncType:I

    return-void
.end method


# virtual methods
.method public getDbType()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iDbType:I

    return v0
.end method

.method public getLastAnchor()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastAnchor:J

    return-wide v0
.end method

.method public getLastSyncError()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncError:I

    return v0
.end method

.method public getLastSyncMapItemNum()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncMapItemNum:J

    return-wide v0
.end method

.method public getLastSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncTime:J

    return-wide v0
.end method

.method public getLastSyncType()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncType:I

    return v0
.end method

.method public setData(JJJIZIII)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncTime:J

    iput-wide p3, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastAnchor:J

    iput-wide p5, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncMapItemNum:J

    iput p7, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncError:I

    iput-boolean p8, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->isReLoad:Z

    iput p9, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iDbType:I

    iput p10, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iLastSyncType:I

    iput p11, p0, Lcom/tencent/tccsync/TccSyncMapInfo;->iMapVer:I

    return-void
.end method
