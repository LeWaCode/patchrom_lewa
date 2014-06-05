.class public Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalSyncHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalSyncHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deleteBackupRecords(Ljava/util/List;I)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static final getBackupRecords()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static final getLocalData(Z)Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalCalllogNum(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v0

    new-instance v3, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;-><init>()V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->setCalllogCount(I)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->setContactCount(I)V

    invoke-virtual {v3, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->setSmsCount(I)V

    if-eqz p0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/b/a;

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/apps/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v4, v5, v5}, Lcom/tencent/qqpim/sdk/apps/b/a;->a(ZZZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/LocalData;->setInstalledSoftware(Ljava/util/List;)V

    :cond_0
    return-object v3
.end method

.method public static final getSDCardSizeInfo()Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->hasStorageCard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;)V

    goto :goto_0
.end method

.method public static getStoredApks(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;)Ljava/util/List;
    .locals 6

    new-instance v2, Lcom/tencent/qqpim/sdk/apps/b/a;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/qqpim/sdk/apps/b/a;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->getBackupFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/software/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/apps/b/a;->a(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/apps/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static final hasSDCard()Z
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->hasStorageCard()Z

    move-result v0

    return v0
.end method

.method public static final setLocalSyncBaseDirectory(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a:Ljava/lang/String;

    return-void
.end method
