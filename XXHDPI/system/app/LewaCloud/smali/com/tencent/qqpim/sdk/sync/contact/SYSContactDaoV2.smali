.class public Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

# interfaces
.implements Lcom/tencent/qqpim/sdk/interfaces/g;


# static fields
.field private static synthetic $SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$IDao$ENUM_IDaoReturnValue:[I = null

.field private static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "sim"

.field private static final MAX_ENTITY_SIZE:I = 0x400000

.field private static final OPE_ADD:I = 0x64

.field private static final OPE_CLEAR:I = 0x66

.field private static final OPE_UPDATE:I = 0x65

.field private static final STR_EMPTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "SYSContactDaoV2"

.field private static volatile mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# instance fields
.field protected groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

.field protected hasDefaultGroup:Z

.field private final mContext:Landroid/content/Context;

.field private final mEmptyContactCount:I

.field private needAdapterWhenBatchAdd:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$IDao$ENUM_IDaoReturnValue()[I
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->$SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$IDao$ENUM_IDaoReturnValue:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->values()[Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->$SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$IDao$ENUM_IDaoReturnValue:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->hasDefaultGroup:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->needAdapterWhenBatchAdd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mEmptyContactCount:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/h;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/j;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    return-void
.end method

.method private addPhotoEntityToMap(Ljava/util/HashMap;Lcom/tencent/qqpim/sdk/object/a/e;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/object/a/e;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/object/a/e;->a()J

    move-result-wide v4

    if-eqz v3, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/e;->a()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SYSContactDaoV2"

    const-string v4, "addPhotoEntityToMap NumberFormatException"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "addPhotoEntityToMap NumberFormatException"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private assemblyContactData(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    const-string v0, "account_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "account_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "custom_ringtone"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "raw_contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    :cond_0
    const-string v8, "mimetype"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getEmail(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    :cond_1
    :goto_0
    invoke-virtual {v3, v7}, Lcom/tencent/qqpim/sdk/object/a/b;->setId(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v0, "raw_contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v7, 0x0

    const-string v8, "CATEGORIES"

    invoke-virtual {v0, v7, v8}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_4
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v7, "ACCOUNTNAME"

    invoke-virtual {v0, v2, v7}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v4, "ACCOUNTTYPE"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v4, "RINGTONE"

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v6}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->setGroupIds(Ljava/util/List;)V

    :cond_5
    return-object v3

    :cond_6
    const-string v9, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getEvent(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_7
    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, p1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getGroupMemberShip(Landroid/database/Cursor;Ljava/lang/StringBuffer;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v9, "vnd.android.cursor.item/im"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getIM(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_9
    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getNickName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_a
    const-string v9, "vnd.android.cursor.item/note"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getNote(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_b
    const-string v9, "vnd.android.cursor.item/organization"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOrganization(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_c
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhone(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_d
    const-string v9, "vnd.android.cursor.item/photo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    sget-object v8, Lcom/tencent/qqpim/sdk/interfaces/c;->d:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v8, :cond_e

    sget-object v8, Lcom/tencent/qqpim/sdk/interfaces/c;->c:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v8, :cond_e

    sget-object v8, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v8, :cond_1

    :cond_e
    invoke-virtual {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhotoDefault(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    const-string v8, "PHOTO"

    invoke-virtual {v3, v8}, Lcom/tencent/qqpim/sdk/object/a/b;->a(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/tencent/qqpim/sdk/object/a/b;->a(Z)V

    sget-object v9, Lcom/tencent/qqpim/sdk/interfaces/c;->c:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v9, :cond_f

    sget-object v9, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v9, :cond_1

    :cond_f
    invoke-virtual {v8}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/tencent/qqpim/sdk/object/a/b;->a([B)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/qqpim/sdk/object/d;->a([B)V

    goto/16 :goto_0

    :cond_10
    const-string v9, "vnd.android.cursor.item/relation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getRelation(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_11
    const-string v9, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_12
    const-string v9, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPostalAddress(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_13
    const-string v9, "vnd.android.cursor.item/website"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getWebsite(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_14
    const-string v9, "vnd.android.huawei.cursor.item/google_extension"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getBirth(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhoneType()Lcom/tencent/qqpim/sdk/sync/contact/g;

    move-result-object v9

    sget-object v10, Lcom/tencent/qqpim/sdk/sync/contact/g;->c:Lcom/tencent/qqpim/sdk/sync/contact/g;

    if-ne v9, v10, :cond_1

    const-string v9, "vnd.android.cursor.item/qqnumber"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getHuaweiU8550QQ(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_0
.end method

.method private clearEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "raw_contact_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearEntity Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearEntity Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructProjection(Lcom/tencent/qqpim/sdk/interfaces/c;)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p1, v0, :cond_2

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p1, v0, :cond_3

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    goto :goto_0

    :cond_3
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    goto/16 :goto_0
.end method

.method private convertDaoRetToEngineRet(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;)I
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->$SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$IDao$ENUM_IDaoReturnValue()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private deleteBatch([Ljava/lang/String;Z)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 11

    const/4 v0, 0x0

    const/4 v8, 0x0

    const-string v1, "SYSContactDaoV2"

    const-string v2, "deleteBatch mutiple enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "SYSContactDaoV2"

    const-string v1, "delete mutiple leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    add-int/lit16 v1, v0, 0xfa

    if-le v1, v7, :cond_6

    move v6, v7

    :goto_2
    invoke-interface {v9, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const-string v1, "_id"

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_5

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "contact_id"

    invoke-direct {p0, v0, v10}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10}, Ljava/util/List;->clear()V

    if-gtz v0, :cond_9

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_6
    add-int/lit16 v6, v0, 0xfa

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_5
    :try_start_4
    const-string v2, "SYSContactDaoV2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_6
    if-eqz v1, :cond_8

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_9
    move v0, v6

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v8

    goto :goto_5
.end method

.method private doReadContacts(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->h:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne v0, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->readPhotos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne v0, p2, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->readOnlyDisplayName(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne v0, p2, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->readOnlyGroupId(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->readContacts(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getBirth(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "BDAY"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBirth Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBirth Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDisplayName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "FN"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDisplayName Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEmail(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v0, 0x0

    const-string v2, "EMAIL"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v2, "data2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v0, "HOME"

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v0, "CELL"

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    const-string v0, "WORK"

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-string v0, "OTHER"

    goto :goto_0

    :cond_4
    if-nez v2, :cond_0

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEmail Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getEvent(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    const-string v0, "data2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "BDAY"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEvent Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEvent Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGroupMemberShip(Landroid/database/Cursor;Ljava/lang/StringBuffer;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->refreshGroupMap()V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGroupMemberShip Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGroupMemberShip Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHDPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getHDPhoto(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "PHOTO"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->a([B)V

    invoke-interface {p2, v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSmallPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    goto :goto_0
.end method

.method private getHuaweiU8550QQ(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v1, 0x0

    const-string v2, "X-TC-IM"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "QQ"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "data8"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHuaweiU8550QQ Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIM(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "X-TC-IM"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "AIM"

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const-string v0, "GTALK"

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    const-string v0, "ICQ"

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    const-string v0, "JABBER"

    goto :goto_0

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v0, "MSN"

    goto :goto_0

    :cond_5
    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    const-string v0, "X-NETMEETING"

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const-string v0, "QQ"

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    const-string v0, "SKYPE"

    goto :goto_0

    :cond_8
    if-ne v2, v5, :cond_9

    const-string v0, "YAHOO"

    goto :goto_0

    :cond_9
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "data6"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIM Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIM Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getDisplayName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/f;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/contact/f;-><init>()V

    const-string v1, "data2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->a(Lcom/tencent/qqpim/sdk/sync/contact/f;Ljava/lang/String;)V

    :cond_0
    const-string v1, "data5"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->b(Lcom/tencent/qqpim/sdk/sync/contact/f;Ljava/lang/String;)V

    :cond_1
    const-string v1, "data3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->c(Lcom/tencent/qqpim/sdk/sync/contact/f;Ljava/lang/String;)V

    :cond_2
    const-string v1, "data4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->d(Lcom/tencent/qqpim/sdk/sync/contact/f;Ljava/lang/String;)V

    :cond_3
    const-string v1, "data6"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->e(Lcom/tencent/qqpim/sdk/sync/contact/f;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "N"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/contact/f;->f(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getName Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getName Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNickName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NICKNAME"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNickName Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNickName Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNote(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NOTE"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNote Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNote Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOperationFromAddress(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 11

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v3, 0x64

    if-ne p3, v3, :cond_9

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v2

    move v3, v2

    move v0, v2

    :goto_1
    if-nez v3, :cond_1

    array-length v3, v8

    if-lt v6, v3, :cond_a

    :cond_1
    if-nez v0, :cond_f

    const-string v1, "data3"

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/contact/e;

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->a(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "data7"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->a(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->b(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "data10"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->b(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_3
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->c(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "data6"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->c(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_4
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->d(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "data5"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->d(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_5
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->e(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "data9"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->e(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_6
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->f(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "data8"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->f(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_7
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->g(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "data4"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->g(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v3, 0x65

    if-ne p3, v3, :cond_0

    const-string v3, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    aget-object v3, v8, v6

    const-string v9, "WORK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    move v3, v4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v10, v0

    move v0, v3

    move v3, v10

    goto/16 :goto_1

    :cond_b
    aget-object v3, v8, v6

    const-string v9, "HOME"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    move v3, v1

    goto :goto_3

    :cond_c
    aget-object v3, v8, v6

    const-string v9, "OTHER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    aget-object v3, v8, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    const/4 v0, 0x3

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_e
    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_f
    move v2, v0

    move-object v0, v5

    goto/16 :goto_2

    :cond_10
    move-object v0, v5

    goto/16 :goto_2
.end method

.method private getOperationFromEmail(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 11

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v3, 0x64

    if-ne p3, v3, :cond_2

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "data1"

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v2

    move v3, v2

    move v0, v2

    :goto_1
    if-nez v3, :cond_1

    array-length v3, v8

    if-lt v6, v3, :cond_3

    :cond_1
    if-nez v0, :cond_9

    const-string v1, "data3"

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v3, 0x65

    if-ne p3, v3, :cond_0

    const-string v3, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v3, v8, v6

    const-string v9, "HOME"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    move v3, v1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v10, v0

    move v0, v3

    move v3, v10

    goto :goto_1

    :cond_4
    aget-object v3, v8, v6

    const-string v9, "WORK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    move v3, v4

    goto :goto_3

    :cond_5
    aget-object v3, v8, v6

    const-string v9, "CELL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x4

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_6
    aget-object v3, v8, v6

    const-string v9, "OTHER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, v8, v6

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v0, 0x3

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_8
    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_9
    move v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_a
    move-object v0, v5

    goto :goto_2
.end method

.method private getOperationFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;ILcom/tencent/qqpim/sdk/sync/contact/d;)V
    .locals 11

    const/16 v1, 0x65

    const/16 v10, 0x64

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x66

    if-ne p3, v0, :cond_2

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "raw_contact_id=? AND mimetype<>? AND mimetype<>?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v0

    const-string v0, "vnd.android.cursor.item/group_membership"

    aput-object v0, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-lt p3, v10, :cond_3

    if-le p3, v1, :cond_4

    :cond_3
    const-string v0, "SYSContactDaoV2"

    const-string v1, "getOperationFromEntity leave  \u53c2\u6570\u4e0d\u5408\u6cd5 "

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-ne p3, v1, :cond_d

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->hasDefaultGroup:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getRecordOfName(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;)Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_5
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-object v0, v3

    move-object v1, v3

    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_e

    if-ne p3, v10, :cond_7

    invoke-virtual {p0, p1, p4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->addDefault(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/sync/contact/d;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isEditGroupNumberData()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "getOperationFromEntity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "entity.isEditGroupNumberData()"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getGroupIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getGroupIds()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p2, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->handleOperationsFromCategoryFromGroupIds(Ljava/util/ArrayList;Ljava/util/List;II)V

    :cond_8
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->entityToOPS(Lcom/tencent/qqpim/sdk/object/d;)V

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, v1, v0, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromName(Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    :cond_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_20

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_3
    move v4, v2

    :goto_4
    if-lt v4, v1, :cond_21

    :cond_c
    invoke-virtual {p0, p2, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->hasDrfaultGroupDefault(Ljava/util/ArrayList;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOperationFromEntity  Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-ne p3, v10, :cond_25

    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v5, v0

    goto/16 :goto_1

    :cond_e
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v4

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    if-eqz v4, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object v1, v4

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_6

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    const-string v9, "N"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move-object v0, v4

    move-object v4, v3

    goto :goto_5

    :cond_10
    const-string v9, "TEL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromPhone(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_11
    const-string v9, "ADR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromAddress(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_12
    const-string v9, "EMAIL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEmail(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_13
    const-string v9, "NICKNAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromNickname(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_14
    const-string v9, "NOTE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromNote(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_15
    const-string v9, "ORG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    goto :goto_5

    :cond_16
    const-string v9, "TITLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    goto :goto_5

    :cond_17
    const-string v9, "PHOTO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromPhotoDefault(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_18
    const-string v9, "URL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromWebsite(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_19
    const-string v9, "X-TC-IM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromIM(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_1a
    const-string v9, "BDAY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-direct {p0, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEvent(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_1b
    const-string v9, "CATEGORIES"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isEditGroupNumberData()Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-direct {p0, p2, v4, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->handleOperationsFromCategory(Ljava/util/ArrayList;Lcom/tencent/qqpim/sdk/object/d;II)V

    move-object v4, v3

    goto/16 :goto_5

    :cond_1c
    const-string v9, "ACCOUNTNAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p4, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    move-object v4, v3

    goto/16 :goto_5

    :cond_1d
    const-string v9, "ACCOUNTTYPE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p4, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    move-object v4, v3

    goto/16 :goto_5

    :cond_1e
    const-string v9, "RINGTONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p4, Lcom/tencent/qqpim/sdk/sync/contact/d;->d:Ljava/lang/String;

    :cond_1f
    move-object v4, v3

    goto/16 :goto_5

    :cond_20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_3

    :cond_21
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_23

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    move-object v2, v0

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_24

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    :goto_7
    invoke-direct {p0, v2, v0, v5, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromORG(Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_22
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_23
    move-object v2, v3

    goto :goto_6

    :cond_24
    move-object v0, v3

    goto :goto_7

    :cond_25
    move v5, v2

    goto/16 :goto_1
.end method

.method private getOperationFromEvent(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->eventToBuilder(Lcom/tencent/qqpim/sdk/object/d;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromIM(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 9

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_2

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    if-eqz v4, :cond_e

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_1
    if-nez v0, :cond_1

    array-length v0, v5

    if-lt v3, v0, :cond_3

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    const-string v0, "data6"

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhoneType()Lcom/tencent/qqpim/sdk/sync/contact/g;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/g;->c:Lcom/tencent/qqpim/sdk/sync/contact/g;

    if-ne v2, v3, :cond_d

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->isChangeTheGetOperationFromQQ_ForHuaweiU8550()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromQQ_ForHuaweiU8550(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    aget-object v6, v5, v3

    const-string v7, "QQ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-object v6, v5, v3

    const-string v7, "MSN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    aget-object v6, v5, v3

    const-string v7, "AIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    aget-object v6, v5, v3

    const-string v7, "GTALK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v1, 0x5

    goto :goto_4

    :cond_7
    aget-object v6, v5, v3

    const-string v7, "ICQ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x6

    goto :goto_4

    :cond_8
    aget-object v6, v5, v3

    const-string v7, "SKYPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :cond_9
    aget-object v6, v5, v3

    const-string v7, "JABBER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v1, 0x7

    goto :goto_4

    :cond_a
    aget-object v6, v5, v3

    const-string v7, "YAHOO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v1, 0x2

    goto :goto_4

    :cond_b
    aget-object v6, v5, v3

    const-string v7, "X-NETMEETING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v1, 0x8

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    const-string v2, "data5"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private getOperationFromName(Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 4

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p4, v1, :cond_7

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "data1"

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->nameDeleteSpace(Lcom/tencent/qqpim/sdk/object/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_6

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/contact/f;

    invoke-virtual {p0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->nameDeleteSpace(Lcom/tencent/qqpim/sdk/object/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->a(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->a(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "data2"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->a(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_2
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->b(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->b(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "data5"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->b(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_3
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->c(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->c(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "data3"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->c(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->d(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->d(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data4"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->d(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_5
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->e(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->e(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "data6"

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/f;->e(Lcom/tencent/qqpim/sdk/sync/contact/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_6
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v1, 0x65

    if-ne p4, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getOperationFromNickname(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromNote(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromORG(Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 11

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v3, 0x64

    if-ne p4, v3, :cond_6

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v2

    move v3, v2

    move v0, v2

    :goto_2
    if-nez v3, :cond_2

    array-length v3, v8

    if-lt v6, v3, :cond_7

    :cond_2
    if-nez v0, :cond_d

    const-string v3, "data3"

    invoke-virtual {v5, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    :goto_3
    const-string v5, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-le v5, v1, :cond_c

    const-string v5, ""

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v3, v2

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_3
    const-string v2, ""

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v3, v1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "data1"

    aget-object v1, v3, v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_4
    :goto_4
    if-eqz p2, :cond_5

    const-string v1, "data4"

    invoke-virtual {p2, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x65

    if-ne p4, v3, :cond_1

    const-string v3, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    aget-object v3, v8, v6

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    aget-object v3, v8, v6

    const-string v9, "WORK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v0, v1

    move v3, v1

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v10, v0

    move v0, v3

    move v3, v10

    goto/16 :goto_2

    :cond_9
    aget-object v3, v8, v6

    const-string v9, "OTHER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v1

    move v3, v4

    goto :goto_5

    :cond_a
    move v3, v0

    move v0, v2

    goto :goto_5

    :cond_b
    const-string v5, "data1"

    aget-object v2, v3, v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "data5"

    aget-object v1, v3, v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v1, "data1"

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_4

    :cond_d
    move v3, v0

    move-object v0, v5

    goto/16 :goto_3

    :cond_e
    move-object v0, v5

    move v3, v2

    goto/16 :goto_3

    :cond_f
    move-object v0, v5

    goto :goto_4
.end method

.method private getOperationFromPhone(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_2

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->needDelNumSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p1, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhoneTypeFromLabel(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/object/d;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_1
    if-nez v2, :cond_1

    const-string v2, "data3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "is_primary"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "is_super_primary"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1
.end method

.method private getOperationFromPhoto(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromQQ_ForHuaweiU8550(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/qqnumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromWebsite(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOrganization(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "ORG"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v2, "data2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    const-string v0, "WORK"

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    const-string v0, "data4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "TITLE"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ne v2, v4, :cond_4

    const-string v0, "OTHER"

    goto :goto_0

    :cond_4
    if-nez v2, :cond_0

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOrganization Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOrganization Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getPhone(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v4, 0x0

    const-string v5, "TEL"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_super_primary"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string v0, "WORK"

    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(Z)V

    :cond_2
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v3, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :goto_1
    return-void

    :cond_3
    const/16 v5, 0x11

    if-ne v4, v5, :cond_4

    const-string v0, "CELL;WORK"

    goto :goto_0

    :cond_4
    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    const-string v0, "PAGER;WORK"

    goto :goto_0

    :cond_5
    const/16 v5, 0x13

    if-ne v4, v5, :cond_6

    const-string v0, "X-ASSISTANT"

    goto :goto_0

    :cond_6
    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    const-string v0, "X-CALLBACK"

    goto :goto_0

    :cond_7
    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    const-string v0, "CAR"

    goto :goto_0

    :cond_8
    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    const-string v0, "X-COMPANY"

    goto :goto_0

    :cond_9
    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    const-string v0, "FAX;HOME"

    goto :goto_0

    :cond_a
    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    const-string v0, "FAX;WORK"

    goto :goto_0

    :cond_b
    if-ne v4, v2, :cond_c

    const-string v0, "HOME"

    goto :goto_0

    :cond_c
    const/16 v2, 0xb

    if-ne v4, v2, :cond_d

    const-string v0, "X-ISDN"

    goto :goto_0

    :cond_d
    const/16 v2, 0xc

    if-ne v4, v2, :cond_e

    const-string v0, "X-MAIN"

    goto :goto_0

    :cond_e
    if-ne v4, v6, :cond_f

    const-string v0, "CELL"

    goto :goto_0

    :cond_f
    const/4 v2, 0x7

    if-ne v4, v2, :cond_10

    const-string v0, "OTHER"

    goto :goto_0

    :cond_10
    const/16 v2, 0xd

    if-ne v4, v2, :cond_11

    const-string v0, "FAX"

    goto :goto_0

    :cond_11
    const/4 v2, 0x6

    if-ne v4, v2, :cond_12

    const-string v0, "PAGER"

    goto :goto_0

    :cond_12
    const/16 v2, 0xe

    if-ne v4, v2, :cond_13

    const-string v0, "RADIO"

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xf

    if-ne v4, v2, :cond_14

    const-string v0, "X-NETMEETING"

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x10

    if-ne v4, v2, :cond_15

    const-string v0, "X-TTY"

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x14

    if-ne v4, v2, :cond_16

    const-string v0, "X-MMS"

    goto/16 :goto_0

    :cond_16
    if-nez v4, :cond_1

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhone Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPhone Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getPhoneType()Lcom/tencent/qqpim/sdk/sync/contact/g;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/g;->d:Lcom/tencent/qqpim/sdk/sync/contact/g;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/g;->d:Lcom/tencent/qqpim/sdk/sync/contact/g;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/g;->a:Lcom/tencent/qqpim/sdk/sync/contact/g;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u8500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/g;->c:Lcom/tencent/qqpim/sdk/sync/contact/g;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/g;->b:Lcom/tencent/qqpim/sdk/sync/contact/g;

    goto :goto_0
.end method

.method private final getPhoneTypeFromLabel(Ljava/lang/String;)I
    .locals 14

    const/16 v8, 0xd

    const/4 v9, 0x7

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v9

    :cond_0
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v10, v7

    move v0, v7

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    move v6, v7

    :goto_1
    array-length v12, v11

    if-lt v10, v12, :cond_2

    if-eqz v6, :cond_13

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    :cond_1
    :goto_2
    move v9, v1

    goto :goto_0

    :cond_2
    aget-object v12, v11, v10

    const-string v13, "HOME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v6, v1

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    aget-object v12, v11, v10

    const-string v13, "WORK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    aget-object v12, v11, v10

    const-string v13, "CELL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    aget-object v12, v11, v10

    const-string v13, "FAX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    aget-object v12, v11, v10

    const-string v13, "PAGER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    aget-object v12, v11, v10

    const-string v13, "OTHER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v0, v1

    goto :goto_3

    :cond_9
    aget-object v12, v11, v10

    const-string v13, "X-CALLBACK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v7, 0x8

    goto :goto_3

    :cond_a
    aget-object v12, v11, v10

    const-string v13, "CAR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v7, 0x9

    goto :goto_3

    :cond_b
    aget-object v12, v11, v10

    const-string v13, "X-COMPANY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v7, 0xa

    goto :goto_3

    :cond_c
    aget-object v12, v11, v10

    const-string v13, "X-ISDN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v7, 0xb

    goto :goto_3

    :cond_d
    aget-object v12, v11, v10

    const-string v13, "X-MAIN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v7, 0xc

    goto :goto_3

    :cond_e
    aget-object v12, v11, v10

    const-string v13, "RADIO"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v7, 0xe

    goto/16 :goto_3

    :cond_f
    aget-object v12, v11, v10

    const-string v13, "X-TELEX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v7, 0xf

    goto/16 :goto_3

    :cond_10
    aget-object v12, v11, v10

    const-string v13, "X-TTY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/16 v7, 0x10

    goto/16 :goto_3

    :cond_11
    aget-object v12, v11, v10

    const-string v13, "X-ASSISTANT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    const/16 v7, 0x13

    goto/16 :goto_3

    :cond_12
    aget-object v12, v11, v10

    const-string v13, "X-MMS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_3

    const/16 v7, 0x14

    goto/16 :goto_3

    :cond_13
    if-eqz v5, :cond_17

    if-eqz v2, :cond_14

    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_14
    if-eqz v3, :cond_15

    const/16 v1, 0x12

    goto/16 :goto_2

    :cond_15
    if-eqz v4, :cond_16

    const/16 v1, 0x11

    goto/16 :goto_2

    :cond_16
    const/4 v1, 0x3

    goto/16 :goto_2

    :cond_17
    if-eqz v4, :cond_18

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_18
    if-eqz v3, :cond_19

    const/4 v1, 0x6

    goto/16 :goto_2

    :cond_19
    if-eqz v0, :cond_1b

    if-eqz v2, :cond_1a

    move v1, v8

    goto/16 :goto_2

    :cond_1a
    move v1, v9

    goto/16 :goto_2

    :cond_1b
    if-eqz v2, :cond_1c

    move v1, v8

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move v1, v7

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPhoneTypeFromLabel Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneTypeFromLabel Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    move v1, v7

    goto/16 :goto_2
.end method

.method private static final getPhoneUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getPostalAddress(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/sdk/sync/contact/e;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;-><init>()V

    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->a(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_0
    const-string v2, "data6"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->b(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_1
    const-string v2, "data4"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->c(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_2
    const-string v2, "data7"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->d(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_3
    const-string v2, "data8"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->e(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_4
    const-string v2, "data9"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->f(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_5
    const-string v2, "data10"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/e;->g(Lcom/tencent/qqpim/sdk/sync/contact/e;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v3, 0x0

    const-string v4, "ADR"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/contact/e;->h(Lcom/tencent/qqpim/sdk/sync/contact/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "data2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v5, :cond_8

    const-string v0, "HOME"

    :cond_7
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "SYSContactDaoV2"

    const-string v1, "getPostalAddress leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    if-ne v1, v6, :cond_9

    :try_start_1
    const-string v0, "WORK"

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    if-ne v1, v3, :cond_a

    const-string v0, "OTHER"

    goto :goto_0

    :cond_a
    if-nez v1, :cond_7

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPostalAddress Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPostalAddress Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getRelation(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 0

    return-void
.end method

.method private final getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-lez v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getSmallPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V
    .locals 4

    :try_start_0
    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "PHOTO"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->a([B)V

    invoke-interface {p2, v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoto Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPhoto Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSmallPhoto(Ljava/lang/String;)[B
    .locals 8

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "data15"

    aput-object v4, v2, v3

    const-string v3, "raw_contact_id=? AND mimetype=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "data15"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_2
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContactPhoto(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContactPhoto(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v0, v6

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_1
.end method

.method private getWebsite(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v1, 0x0

    const-string v2, "URL"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebsite Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWebsite Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleOperationsFromCategory(Ljava/util/ArrayList;Lcom/tencent/qqpim/sdk/object/d;II)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x65

    const/16 v7, 0x64

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->interpretGroupNames(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->refreshGroupMap()V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->isHasDefaultGroup(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getDraultGroupNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-ne p4, v7, :cond_4

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_3
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "data1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne p4, v8, :cond_3

    const-string v3, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/a;->a()Lcom/tencent/qqpim/sdk/sync/contact/a;

    move-result-object v2

    invoke-virtual {v2, v9, v9}, Lcom/tencent/qqpim/sdk/sync/contact/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v3, v0, v2}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/e;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-ne p4, v7, :cond_7

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_6
    :goto_2
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "data1"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    if-ne p4, v8, :cond_6

    const-string v4, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_2
.end method

.method private handleOperationsFromCategoryFromGroupIds(Ljava/util/ArrayList;Ljava/util/List;II)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/16 v3, 0x64

    if-ne p4, v3, :cond_4

    const-string v3, "raw_contact_id"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    :cond_3
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "data1"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 v3, 0x65

    if-ne p4, v3, :cond_3

    const-string v3, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_1
.end method

.method private insertBatchIds(Ljava/util/ArrayList;)[J
    .locals 13

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [J

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->a:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v0, v1, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/ContactPermissionCheckUtil;->checkContactAggregationNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->a:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v0, v1, v12}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    :cond_0
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_1
    if-lt v6, v7, :cond_2

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_2
    if-lt v3, v7, :cond_5

    move-object v0, v4

    :goto_3
    return-object v0

    :cond_1
    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->a:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "aggregation_mode"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "dirty"

    const-string v10, "1"

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    if-ne v8, v12, :cond_3

    const-string v2, "aggregation_needed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->e()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->b()Z

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->d()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->c()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    const-string v10, "account_name"

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v10, "account_type"

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->insertBatchIdsDefault(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move v0, v2

    :goto_5
    const-string v2, "starred"

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_6
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    :cond_4
    const-string v0, "0"

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertBatchIds(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertBatchIds(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertBatchIds(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertBatchIds(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertBatchIds(),"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertBatchIds(),"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_3

    :cond_5
    aget-object v1, v0, v3

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_4

    :cond_7
    move v0, v3

    goto/16 :goto_5
.end method

.method private queryData(Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionLargerOrEquals2_2()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v5, "sort_key asc"

    :goto_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id"

    invoke-direct {p0, v3, p4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/name"

    aput-object v2, v4, v6

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id"

    invoke-direct {p0, v3, p4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v4, v6

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id"

    invoke-direct {p0, v3, p4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v4, v6

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "raw_contact_id"

    invoke-direct {p0, v2, p4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v5, p2

    goto/16 :goto_0
.end method

.method private queryNumberAfterException()I
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryRawContactId()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryNumberAfterException()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private queryRawContactId()Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getQueryFilterStringDefault()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryStaredById(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/sync/contact/d;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    iput v2, v0, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    iput-object v3, v0, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/qqpim/sdk/sync/contact/d;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryStaredById Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryStaredById Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private queryStaredById([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/sync/contact/d;
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryStaredById  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "starred"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "account_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "account_type"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "custom_ringtone"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/sync/contact/d;

    move v2, v7

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v8}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    iput v3, v8, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    iput-object v4, v8, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    iput-object v5, v8, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    iput-object v7, v8, Lcom/tencent/qqpim/sdk/sync/contact/d;->d:Ljava/lang/String;

    aput-object v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v1, "SYSContactDaoV2"

    const-string v2, "queryStaredById(String[] strEntityIds) leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryStaredById(String[] strEntityIds) leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryStaredById(String[] strEntityIds) Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryStaredById(String[] strEntityIds) leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v1, "SYSContactDaoV2"

    const-string v2, "queryStaredById(String[] strEntityIds) leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private readContacts(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;
    .locals 4

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->assemblyContactData(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->getSize()I

    move-result v0

    add-int/2addr v0, v2

    const/high16 v2, 0x40

    if-gt v0, v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method private readContacts(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->assemblyContactData(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private readOnlyDisplayName(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    const-string v0, "raw_contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getDisplayName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0
.end method

.method private readOnlyGroupId(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "raw_contact_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move v0, v3

    :goto_1
    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "raw_contact_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v5

    :goto_2
    if-eqz v1, :cond_4

    new-instance v1, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    invoke-interface {v1, v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/a/b;->setGroupIds(Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_2

    :cond_3
    move-object v2, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method private readPhotos(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    const-string v2, "raw_contact_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhotoDefault(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private testDelAll()Z
    .locals 9

    const/4 v3, 0x0

    const/16 v1, 0x64

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    move v0, v1

    :goto_0
    move v5, v0

    move v6, v2

    move v2, v3

    :goto_1
    if-gtz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    add-int v0, v2, v5

    invoke-interface {v7, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    const-string v0, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "delete num="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int v4, v2, v5

    sub-int v2, v6, v5

    if-le v2, v1, :cond_2

    move v0, v1

    :goto_2
    const-string v5, "SYSContactDaoV2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "index="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " allSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " needDelCount="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    move v6, v2

    move v2, v4

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected AddOneByOneDefault(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->needAdapterWhenBatchAdd:Z

    return v0
.end method

.method protected OperationsFromCategory(Ljava/util/ArrayList;Lcom/tencent/qqpim/sdk/object/d;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->handleOperationsFromCategory(Ljava/util/ArrayList;Lcom/tencent/qqpim/sdk/object/d;II)V

    return-void
.end method

.method public add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SYSContactDaoV2"

    const-string v2, "add  enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "SYSContactDaoV2"

    const-string v2, "add  leave entity = null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    const/16 v3, 0x64

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;ILcom/tencent/qqpim/sdk/sync/contact/d;)V

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_1
    :goto_1
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add  leave strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add RemoteException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add OperationApplicationException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add OperationApplicationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public add(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 9

    const-string v0, "SYSContactDaoV2"

    const-string v1, "add batch: entry"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->AddOneByOneDefault(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add(final List<IEntity>, final List<String>, final int[]),needAdapterWhenBatchAdd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->needAdapterWhenBatchAdd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->needAdapterWhenBatchAdd:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v1

    aput v1, p3, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    const/16 v6, 0x64

    invoke-direct {p0, v0, v3, v6, v5}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;ILcom/tencent/qqpim/sdk/sync/contact/d;)V

    goto :goto_2

    :cond_3
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    new-array v5, v2, [J

    if-eqz v3, :cond_4

    array-length v6, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-lt v0, v2, :cond_7

    const-string v0, "SYSContactDaoV2"

    const-string v1, "add batch: leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add batch: applyBatch RemoteException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add batch: applyBatch RemoteException="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->addOneByOne(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add batch: applyBatch OperationApplicationException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add batch: applyBatch OperationApplicationException="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->addOneByOne(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add batch: applyBatch Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add batch: applyBatch Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->addOneByOne(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->addOneByOne(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v6, :cond_6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    aput-wide v7, v5, v1

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_6
    const-wide/16 v7, -0x1

    aput-wide v7, v5, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    aget-wide v3, v5, v0

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_9

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "add batch: falied! i ="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz v1, :cond_a

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v1

    aget v3, p3, v0

    if-eq v1, v3, :cond_8

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v1

    aput v1, p3, v0

    :cond_8
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v1

    aput v1, p3, v0

    goto :goto_7
.end method

.method public addContactPhoto(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data15"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addContactPhoto(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addContactPhotoBatch(Ljava/util/List;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v4, v2

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmPhotoData()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmContactId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    array-length v8, v7

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    const-string v8, "SYSContactDaoV2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "addContactPhotoBatch() allPhotoSize = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0xfa000

    if-gt v4, v8, :cond_4

    const/16 v8, 0x1e

    if-le v3, v8, :cond_5

    :cond_4
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    array-length v4, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v3, v1

    :cond_5
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "data15"

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addContactPhotoBatch() t = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addContactPhotoBatch() t = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method protected addDefault(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/sync/contact/d;)Landroid/content/ContentProviderOperation;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->a:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v2, v0, v5}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/ContactPermissionCheckUtil;->checkContactAggregationNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->a:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v2, v0, v1}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    move v0, v1

    :cond_0
    :goto_0
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "aggregation_mode"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "dirty"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    if-ne v0, v1, :cond_3

    const-string v0, "aggregation_needed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->dealAccountNameType(Landroid/content/ContentProviderOperation$Builder;Lcom/tencent/qqpim/sdk/sync/contact/d;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->insertBatchIdsDefault(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "custom_ringtone"

    iget-object v3, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "starred"

    iget v0, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    if-ne v0, v1, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->a:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    goto :goto_0

    :cond_2
    const-string v0, "0"

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method protected addOneByOne(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "SYSContactDaoV2"

    const-string v2, "addOneByOne entry"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v2

    const-string v0, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addOneByOne retErrs[i]="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v1

    aput v1, p3, v2

    const-string v1, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addOneByOne retErrs[i]="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public changeTheDataRawContactId()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected dealAccountNameType(Landroid/content/ContentProviderOperation$Builder;Lcom/tencent/qqpim/sdk/sync/contact/d;)V
    .locals 3

    iget-object v0, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "account_name"

    iget-object v1, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p2, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    return-void
.end method

.method public delAllContactNotFilterAccountAndName()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId4DelAll(Ljava/util/ArrayList;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->deleteBatch([Ljava/lang/String;Z)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public delContactPhotoBatch(Ljava/util/List;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "raw_contact_id =? AND mimetype =? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-string v8, "vnd.android.cursor.item/photo"

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addContactPhotoBatch() t = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "delete enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    const-string v7, ""

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_8

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v7

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "contact_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_3
    if-gtz v0, :cond_6

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_3
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v0, "SYSContactDaoV2"

    const-string v1, "delete leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :cond_8
    move-object v0, v7

    goto/16 :goto_2
.end method

.method public delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->deleteBatch([Ljava/lang/String;Z)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 4

    const-string v0, "SYSContactDaoV2"

    const-string v1, "delete all enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method protected entityToOPS(Lcom/tencent/qqpim/sdk/object/d;)V
    .locals 0

    return-void
.end method

.method protected eventToBuilder(Lcom/tencent/qqpim/sdk/object/d;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected getAccountTypeAccountNameFileter()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accoutNameFilterWhere="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    aget-object v3, v0, v5

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v0, v6

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AND (account_type <> \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    aget-object v3, v0, v5

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v0, v6

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AND (account_name <> \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    aget-object v3, v0, v5

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v6

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AND (account_type <>\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <> \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public getAllEntityId(Ljava/util/List;Z)Ljava/util/List;
    .locals 4

    const-string v0, "SYSContactDaoV2"

    const-string v1, "getAllEntityId: entry"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityIdDefault(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId: leave list.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAllEntityId4DelAll(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v3, "deleted = 0 AND (account_name is null or (account_name <> \'SIM\' AND account_name <> \'UIM\'))"

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllEntityId Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception when close cursor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception when close cursor : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception when close cursor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2
.end method

.method protected getAllEntityIdDefault(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryRawContactId()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllEntityId Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception when close cursor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception when close cursor : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception when close cursor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getAllEntityIdWithPhoto()Ljava/util/List;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "getAllEntityIdWithPhoto()  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data15"

    aput-object v1, v2, v0

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data15 is not null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    move-object v0, v6

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityIdWithPhoto(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v1, "mimetype"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "raw_contact_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllEntityIdWithPhoto raw_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllEntityIdWithPhoto Throwable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllEntityIdWithPhoto Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getContactPhoto(Ljava/lang/String;)[B
    .locals 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionLargerOrEquals4_0()Z

    move-result v1

    if-eqz v1, :cond_b

    if-gtz v0, :cond_2

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContactPhoto():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v3

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v0, "data_version"

    aput-object v0, v2, v5

    const/4 v0, 0x3

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data14"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data15"

    aput-object v1, v2, v0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "sdk 4.x try to query large photo  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data15 is not null AND raw_contact_id =? AND mimetype=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    goto :goto_0

    :cond_6
    :try_start_3
    const-string v0, "data14"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSmallPhoto(Ljava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSmallPhoto(Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getHDPhoto(I)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_6
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContactPhoto(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSmallPhoto(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected getDefaultGroupId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getDraultGroupNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getEmptyContactCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFileterString()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->e()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v7, " AND (account_name is null OR ("

    move v3, v4

    move v1, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    const-string v0, " AND "

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-ne v0, v2, :cond_b

    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v8, v0

    if-ne v8, v10, :cond_7

    aget-object v8, v0, v4

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v0, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    aget-object v8, v0, v4

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    aget-object v8, v0, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(account_type <> \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\')"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_7

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v8, v0

    if-ne v8, v10, :cond_7

    aget-object v8, v0, v4

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v0, v0, v2

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const-string v0, " AND "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_8
    aget-object v8, v0, v4

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    aget-object v8, v0, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(account_name <> \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\')"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    aget-object v8, v0, v4

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    aget-object v8, v0, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(account_type <>\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v0, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' OR account_name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <> \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v0, v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\')"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ""

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    const-string v0, ""

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getHDPhoto(I)[B
    .locals 8

    const/4 v0, 0x0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHDPhoto enter ,photoId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_1

    :try_start_0
    const-string v1, "content://com.android.contacts/display_photo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x5000

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    const/16 v1, 0x5000

    :try_start_3
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_6
    const-string v5, "SYSContactDaoV2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getHDPhoto():"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHDPhoto():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHDPhoto():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_3
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHDPhoto():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method protected getOperationFromPhotoDefault(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromPhoto(Lcom/tencent/qqpim/sdk/object/d;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method getPeopleNames([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    const-string v0, "data1"

    aput-object v0, v2, v11

    const/16 v8, 0x384

    array-length v0, p1

    div-int/lit16 v1, v0, 0x384

    rem-int/lit16 v7, v0, 0x384

    if-lez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x7080

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v0

    move v0, v8

    :goto_0
    add-int/lit8 v10, v1, -0x1

    if-gez v10, :cond_5

    if-lez v7, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v9, v6, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v7

    :goto_1
    if-gt v0, v11, :cond_c

    const-string v0, "PHONE_NUMBERS_EQUAL(?,data1)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v7, [Ljava/lang/String;

    move v0, v6

    :goto_2
    if-lt v0, v7, :cond_d

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhoneUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data1"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->formatPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v7, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v0

    move v0, v8

    goto :goto_0

    :cond_5
    new-array v4, v0, [Ljava/lang/String;

    move v1, v6

    :goto_3
    if-lt v1, v0, :cond_a

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v9, v6, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v0

    :goto_4
    if-gt v8, v11, :cond_b

    const-string v0, "PHONE_NUMBERS_EQUAL(?,data1)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhoneUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "data1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wscl/TextUtil;->formatPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    move v1, v10

    move v0, v8

    goto/16 :goto_0

    :cond_a
    add-int v3, v7, v1

    mul-int v8, v10, v0

    add-int/2addr v3, v8

    aget-object v3, p1, v3

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    const-string v0, "PHONE_NUMBERS_EQUAL(?,data1) OR "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_4

    :cond_c
    const-string v1, "PHONE_NUMBERS_EQUAL(?,data1) OR "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_d
    aget-object v1, p1, v0

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method protected getPhotoDefault(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V
    .locals 5

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionLargerOrEquals4_0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSmallPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getHDPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPhoto():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSmallPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    goto :goto_0
.end method

.method protected getQueryFilterStringDefault()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAccountTypeAccountNameFileter()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleted = 0 AND (account_name is null or (account_name <> \'SIM\' AND account_name <> \'UIM\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordOfName(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;)Lcom/tencent/qqpim/sdk/object/d;
    .locals 0

    return-object p3
.end method

.method protected handleOperationsFromCategory(Ljava/util/ArrayList;II)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getDefaultGroupId()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v2, 0x64

    if-ne p3, v2, :cond_3

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_2
    :goto_1
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "data1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x65

    if-ne p3, v2, :cond_2

    const-string v2, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1
.end method

.method protected hasDrfaultGroupDefault(Ljava/util/ArrayList;II)V
    .locals 0

    return-void
.end method

.method protected insertBatchIdsDefault(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    return-object p1
.end method

.method protected isChangeTheGetOperationFromQQ_ForHuaweiU8550()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_id=? and deleted=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_3

    move v0, v8

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_2
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isExisted Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method protected isHasDefaultGroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected lookNameByPhoneDefault(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/wscl/TextUtil;->getReversePhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->changeTheDataRawContactId()[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data1=? or data4=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->isExisted(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_3
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lookupFirstContactIdByPhone Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lookupFirstContactIdByPhone Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1

    :cond_5
    move-object v0, v6

    goto :goto_0
.end method

.method public lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->lookNameByPhoneDefault(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_2
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lookupFirstContactNameByPhone  Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lookupFirstContactNameByPhone  Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v6

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1
.end method

.method protected nameDeleteSpace(Lcom/tencent/qqpim/sdk/object/d;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected needDelNumSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->d:Lcom/tencent/qqpim/sdk/interfaces/c;

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 13

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v0, :cond_0

    const/16 v0, 0x18

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    const-string v0, "mimetype"

    aput-object v0, v2, v1

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v12

    const-string v0, "is_primary"

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v1, "is_super_primary"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data_version"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "data3"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "data5"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "data6"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "data7"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "data8"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "data9"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "data11"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "data12"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "data13"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "data14"

    aput-object v1, v2, v0

    const/16 v0, 0x14

    const-string v1, "data_sync1"

    aput-object v1, v2, v0

    const/16 v0, 0x15

    const-string v1, "data_sync2"

    aput-object v1, v2, v0

    const/16 v0, 0x16

    const-string v1, "data_sync3"

    aput-object v1, v2, v0

    const/16 v0, 0x17

    const-string v1, "data_sync4"

    aput-object v1, v2, v0

    :goto_0
    const-string v0, "SYSContactDaoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "query  enter strEntityId = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryStaredById(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/sync/contact/d;

    move-result-object v9

    if-nez v9, :cond_1

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0x19

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    const-string v0, "mimetype"

    aput-object v0, v2, v1

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v12

    const-string v0, "is_primary"

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v1, "is_super_primary"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data_version"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "data3"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "data5"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "data6"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "data7"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "data8"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "data9"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "data11"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "data12"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "data13"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "data14"

    aput-object v1, v2, v0

    const/16 v0, 0x14

    const-string v1, "data15"

    aput-object v1, v2, v0

    const/16 v0, 0x15

    const-string v1, "data_sync1"

    aput-object v1, v2, v0

    const/16 v0, 0x16

    const-string v1, "data_sync2"

    aput-object v1, v2, v0

    const/16 v0, 0x17

    const-string v1, "data_sync3"

    aput-object v1, v2, v0

    const/16 v0, 0x18

    const-string v1, "data_sync4"

    aput-object v1, v2, v0

    goto/16 :goto_0

    :cond_1
    new-instance v7, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v7}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "raw_contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->h:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v0, :cond_5

    :cond_2
    const-string v0, "mimetype"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhotoDefault(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    goto/16 :goto_1

    :cond_5
    :try_start_2
    const-string v0, "mimetype"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getEmail(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    :cond_6
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "CATEGORIES"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    const-string v0, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query CATEGORY:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "ACCOUNTNAME"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget-object v1, v9, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "ACCOUNTTYPE"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget-object v1, v9, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "RINGTONE"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget-object v1, v9, Lcom/tencent/qqpim/sdk/sync/contact/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    const-string v0, "SYSContactDaoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query  leave entity.getCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/object/a/b;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v7, v10}, Lcom/tencent/qqpim/sdk/object/a/b;->setGroupIds(Ljava/util/List;)V

    :cond_9
    move-object v0, v7

    goto/16 :goto_1

    :cond_a
    :try_start_3
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getEvent(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v6, v1

    :goto_4
    :try_start_4
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query Throwable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_b
    :try_start_5
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v1, v8}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getGroupMemberShip(Landroid/database/Cursor;Ljava/lang/StringBuffer;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    :try_start_6
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getIM(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_e
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getNickName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_f
    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getNote(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_10
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOrganization(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_11
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhone(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_12
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v0, :cond_6

    invoke-virtual {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhotoDefault(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    goto/16 :goto_2

    :cond_13
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getRelation(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_14
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getName(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_15
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPostalAddress(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_16
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getWebsite(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_17
    const-string v2, "vnd.android.huawei.cursor.item/google_extension"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getBirth(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V

    goto/16 :goto_2

    :cond_18
    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhoneType()Lcom/tencent/qqpim/sdk/sync/contact/g;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/g;->c:Lcom/tencent/qqpim/sdk/sync/contact/g;

    if-ne v2, v3, :cond_6

    const-string v2, "vnd.android.cursor.item/qqnumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getHuaweiU8550QQ(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/object/a/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :cond_19
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1a
    move-object v0, v6

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_4
.end method

.method protected query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->constructProjection(Lcom/tencent/qqpim/sdk/interfaces/c;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSContactDaoV2"

    const-string v3, "query(String[] strEntityIds, ENUM_FILTER filter)"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "raw_contact_id"

    :try_start_0
    invoke-direct {p0, p2, v2, v1, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryData(Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->readContacts(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "query batch t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query batch t="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public query()Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->constructProjection(Lcom/tencent/qqpim/sdk/interfaces/c;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSContactDaoV2"

    const-string v3, "query(String[] strEntityIds, ENUM_FILTER filter)"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "raw_contact_id"

    :try_start_0
    invoke-direct {p0, p2, v2, v1, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryData(Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->doReadContacts(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "query batch t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query batch t="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0
.end method

.method public queryBatch()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryBatch(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBatch(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v1, 0xfa

    if-gt v2, v1, :cond_2

    invoke-virtual {p0, v4, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    add-int/lit16 v1, v0, 0xfa

    if-le v1, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-interface {v4, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    add-int/lit16 v1, v0, 0xfa

    goto :goto_2
.end method

.method public queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v1, 0xfa

    if-gt v2, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    add-int/lit16 v1, v0, 0xfa

    if-le v1, v2, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit16 v1, v0, 0xfa

    goto :goto_2
.end method

.method public queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 5

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    goto :goto_0

    :cond_2
    add-int/lit16 v2, v1, 0xfa

    if-le v2, v3, :cond_4

    move v2, v3

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit16 v2, v1, 0xfa

    goto :goto_2
.end method

.method public queryContactsOnlyPhoto(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryContactsWithPhoto  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v7

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data_version"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data14"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data15"

    aput-object v1, v2, v0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v3, "data15 is not null"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-direct {p0, v1, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getSelectionStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryContactsWithPhoto(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryContactsWithPhoto size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    :try_start_2
    new-instance v0, Lcom/tencent/qqpim/sdk/object/a/e;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/a/e;-><init>()V

    const-string v2, "mimetype"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPhotoDefault(Landroid/database/Cursor;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    const-string v2, "raw_contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "data_version"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "SYSContactDaoV2"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "queryContactsWithPhoto raw_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " _photoid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data_version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/a/e;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/qqpim/sdk/object/a/e;->a(J)V

    invoke-direct {p0, v8, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->addPhotoEntityToMap(Ljava/util/HashMap;Lcom/tencent/qqpim/sdk/object/a/e;)Z

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lcom/tencent/qqpim/sdk/object/a/e;

    move v2, v7

    :goto_3
    if-lt v2, v3, :cond_9

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryContactsWithPhoto Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryContactsWithPhoto Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    aput-object v6, v1, v2

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    aput-object v0, v1, v2

    goto :goto_4
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryNameById  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const-string v1, "SYSContactDaoV2"

    const-string v2, "queryNameById leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryNameById Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryNameById Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public queryNumber()I
    .locals 7

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryNumber start"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryNumberDefault()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryNumber end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryNumberAfterException()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2
    :try_start_5
    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryNumber Throwable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2
.end method

.method protected queryNumberDefault()Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->queryRawContactId()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected refreshGroupMap()V
    .locals 0

    return-void
.end method

.method public update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 5

    const-string v0, "SYSContactDaoV2"

    const-string v1, "update enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->isExisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SYSContactDaoV2"

    const-string v1, "update leave ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->clearEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z

    const/16 v3, 0x65

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;ILcom/tencent/qqpim/sdk/sync/contact/d;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->updateDefault(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;Lcom/tencent/qqpim/sdk/sync/contact/d;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    const-string v1, "SYSContactDaoV2"

    const-string v2, "update leave ENUM_IDaoReturnValue.ACTION_SUCCEED"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update RemoteException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update OperationApplicationException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update OperationApplicationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public update(Ljava/util/List;[I)Z
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;ILcom/tencent/qqpim/sdk/sync/contact/d;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    const/16 v6, 0x65

    invoke-direct {p0, v0, v3, v6, v5}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;ILcom/tencent/qqpim/sdk/sync/contact/d;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update RemoteException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->updateOneByOne(Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update OperationApplicationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update OperationApplicationException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->updateOneByOne(Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update OperationApplicationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update OperationApplicationException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->updateOneByOne(Ljava/util/List;[I)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-lt v1, v4, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public updateContactPhoto(Ljava/lang/String;[B)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data15"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "raw_contact_id=? AND mimetype=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string v8, "vnd.android.cursor.item/photo"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SYSContactDaoV2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateContactPhoto(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected updateDefault(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/ArrayList;Lcom/tencent/qqpim/sdk/sync/contact/d;)Landroid/content/ContentProviderOperation;
    .locals 4

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "starred"

    iget v0, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    iget-object v2, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "account_name"

    iget-object v2, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "account_type"

    iget-object v3, p3, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method protected updateOneByOne(Ljava/util/List;[I)Z
    .locals 5

    const-string v0, "SYSContactDaoV2"

    const-string v1, "updateOneByOne entry"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->convertDaoRetToEngineRet(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;)I

    move-result v0

    aput v0, p2, v1

    const-string v0, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateOneByOne retErrs[i]="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
