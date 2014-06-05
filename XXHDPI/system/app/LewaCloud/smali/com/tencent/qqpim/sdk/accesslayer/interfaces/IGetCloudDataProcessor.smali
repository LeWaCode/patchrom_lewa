.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetCloudDataProcessor;
.super Ljava/lang/Object;


# static fields
.field public static final CLOUD_DATA_CUR_ALL:I = 0x10

.field public static final CLOUD_DATA_RECYCLE:I = 0x20

.field public static final DATA_ADD_ON_WEB_BEFORE_SYNC:I = 0x8

.field public static final DATA_DEL_AFTER_FIRST_SYNC_LOCAL_COVER_NET:I = 0x1

.field public static final DATA_DEL_ON_LOCAL_EXIST_ON_WEB:I = 0x2

.field public static final DATA_DEL_ON_WEB_EXIST_ON_LOCAL:I = 0x4

.field public static final MSG_ID_GET_CLOUD_DATA:I = 0x1


# virtual methods
.method public abstract getCloudData(LWUPSYNC/AccInfo;Ljava/lang/String;ILjava/util/ArrayList;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
.end method
