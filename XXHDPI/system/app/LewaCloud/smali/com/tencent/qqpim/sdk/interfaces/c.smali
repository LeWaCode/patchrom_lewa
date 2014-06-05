.class public final enum Lcom/tencent/qqpim/sdk/interfaces/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum b:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum c:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum d:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum e:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum f:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum g:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum h:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum i:Lcom/tencent/qqpim/sdk/interfaces/c;

.field public static final enum j:Lcom/tencent/qqpim/sdk/interfaces/c;

.field private static enum k:Lcom/tencent/qqpim/sdk/interfaces/c;

.field private static enum l:Lcom/tencent/qqpim/sdk/interfaces/c;

.field private static enum m:Lcom/tencent/qqpim/sdk/interfaces/c;

.field private static enum n:Lcom/tencent/qqpim/sdk/interfaces/c;

.field private static enum o:Lcom/tencent/qqpim/sdk/interfaces/c;

.field private static final synthetic p:[Lcom/tencent/qqpim/sdk/interfaces/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_ALL"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->a:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_ALL_WITH_PHOTO_MD5_WITHOUT_GROUP"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_ALL_WITH_PHOTO_MD5"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->c:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_ALL_ITEMS"

    invoke-direct {v0, v1, v6}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->d:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_NO_PHOTO_NO_PHOTOMD5_NO_GROUP"

    invoke-direct {v0, v1, v7}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_NO_PHOTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_NO_GROUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_ONLY_PHOTO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->h:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_ONLY_GROUP_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CONTACT_ONLY_DISPLAY_NAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_SMS_ALL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->k:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_SMS_PHONENUM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->l:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CALLlOG_ALL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->m:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CALLlOG_DATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->n:Lcom/tencent/qqpim/sdk/interfaces/c;

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    const-string v1, "FILTER_CALLLOG_PHONENUM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->o:Lcom/tencent/qqpim/sdk/interfaces/c;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/interfaces/c;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->a:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->c:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->d:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->h:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->k:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->l:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->m:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->n:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->o:Lcom/tencent/qqpim/sdk/interfaces/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->p:[Lcom/tencent/qqpim/sdk/interfaces/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/c;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/interfaces/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->p:[Lcom/tencent/qqpim/sdk/interfaces/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
