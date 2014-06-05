.class public Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = -0x16474cead0531c6cL


# instance fields
.field private backupFilePath:Ljava/lang/String;

.field private calllogCount:I

.field private contactCount:I

.field private smsCount:I

.field private softwareCount:I

.field private timeStamp:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;)I
    .locals 4

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->timeStamp:J

    iget-wide v2, p1, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->timeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->timeStamp:J

    iget-wide v2, p1, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->timeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->compareTo(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;)I

    move-result v0

    return v0
.end method

.method public getBackupFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->backupFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCalllogCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->calllogCount:I

    return v0
.end method

.method public getContactCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->contactCount:I

    return v0
.end method

.method public getSmsCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->smsCount:I

    return v0
.end method

.method public getSoftwareCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->softwareCount:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->timeStamp:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->version:I

    return v0
.end method

.method public setBackupFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->backupFilePath:Ljava/lang/String;

    return-void
.end method

.method public setCalllogCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->calllogCount:I

    return-void
.end method

.method public setContactCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->contactCount:I

    return-void
.end method

.method public setSmsCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->smsCount:I

    return-void
.end method

.method public setSoftwareCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->softwareCount:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->timeStamp:J

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->version:I

    return-void
.end method
