.class public Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;


# static fields
.field private static final ADDRESSTYPE:[Ljava/lang/String; = null

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field protected static final IMTYPE:[Ljava/lang/String; = null

.field private static final LABELLIST_INDEX_TAG_ADR:I = 0x1

.field private static final LABELLIST_INDEX_TAG_CATEGORIES:I = 0xc

.field private static final LABELLIST_INDEX_TAG_EMAIL:I = 0x2

.field private static final LABELLIST_INDEX_TAG_FN:I = 0x4

.field private static final LABELLIST_INDEX_TAG_N:I = 0x9

.field private static final LABELLIST_INDEX_TAG_NICKNAME:I = 0xa

.field private static final LABELLIST_INDEX_TAG_NOTE:I = 0x8

.field private static final LABELLIST_INDEX_TAG_ORG:I = 0x6

.field private static final LABELLIST_INDEX_TAG_PHOTO:I = 0x5

.field private static final LABELLIST_INDEX_TAG_RINGTONE:I = 0xd

.field private static final LABELLIST_INDEX_TAG_TEL:I = 0x0

.field private static final LABELLIST_INDEX_TAG_TITLE:I = 0x7

.field private static final LABELLIST_INDEX_TAG_X_FOCUS:I = 0xb

.field private static final LABELLIST_INDEX_TAG_X_TC_IM:I = 0x3

.field private static final LABEL_LIST:[Ljava/lang/String; = null

.field private static final METHODS_URI:Landroid/net/Uri; = null

.field private static final ODERBYCMID:Ljava/lang/String; = null

.field protected static final ODERBYID:Ljava/lang/String; = null

.field private static final ODERBYORGID:Ljava/lang/String; = null

.field private static final ODERBYPHONEID:Ljava/lang/String; = null

.field private static final ORGTYPE:[Ljava/lang/String; = null

.field private static final ORG_URI:Landroid/net/Uri; = null

.field private static final PHONE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SYSContactDaoV1"

.field private static final TAG_MAP:Ljava/util/Map; = null

.field private static final TELTYPE:[Ljava/lang/String; = null

.field static final chDivider:C = ';'

.field static final chNeedEscapeChars:[C

.field private static contactCursor:Landroid/database/Cursor;

.field private static groupId:J

.field private static id:Landroid/net/Uri;

.field private static volatile mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

.field private static maxId:J

.field private static orgList:Ljava/util/ArrayList;

.field private static titleList:Ljava/util/ArrayList;

.field protected static final values:Landroid/content/ContentValues;


# instance fields
.field private groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

.field private final mEmptyContactCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "HOME"

    aput-object v2, v0, v5

    const-string v2, "CELL"

    aput-object v2, v0, v6

    const-string v2, "WORK"

    aput-object v2, v0, v7

    const-string v2, "FAX;WORK"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "FAX;HOME"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "PAGER"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "OTHER"

    aput-object v3, v0, v2

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->TELTYPE:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "HOME"

    aput-object v2, v0, v5

    const-string v2, "WORK"

    aput-object v2, v0, v6

    const-string v2, "OTHER"

    aput-object v2, v0, v7

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "AIM"

    aput-object v2, v0, v1

    const-string v2, "MSN"

    aput-object v2, v0, v5

    const-string v2, "YAHOO"

    aput-object v2, v0, v6

    const-string v2, "SKYPE"

    aput-object v2, v0, v7

    const-string v2, "QQ"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "GTALK"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ICQ"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "JABBER"

    aput-object v3, v0, v2

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "WORK"

    aput-object v2, v0, v5

    const-string v2, "OTHER"

    aput-object v2, v0, v6

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ORGTYPE:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->TAG_MAP:Ljava/util/Map;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "TEL"

    aput-object v2, v0, v1

    const-string v2, "ADR"

    aput-object v2, v0, v5

    const-string v2, "EMAIL"

    aput-object v2, v0, v6

    const-string v2, "X-TC-IM"

    aput-object v2, v0, v7

    const-string v2, "FN"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "PHOTO"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ORG"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "TITLE"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "NOTE"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "N"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "NICKNAME"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "X-FOCUS"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "CATEGORIES"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "RINGTONE"

    aput-object v3, v0, v2

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->LABEL_LIST:[Ljava/lang/String;

    move v0, v1

    :goto_0
    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYPHONEID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYCMID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYORGID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupId:J

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    const-string v0, "content://contacts/organizations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ORG_URI:Landroid/net/Uri;

    const-string v0, "content://contacts/contact_methods"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->METHODS_URI:Landroid/net/Uri;

    const-string v0, "content://contacts/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    new-array v0, v8, [C

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v1, 0x3b

    aput-char v1, v0, v5

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v1, 0xd

    aput-char v1, v0, v6

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v1, 0xa

    aput-char v1, v0, v7

    return-void

    :cond_0
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->TAG_MAP:Ljava/util/Map;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->LABEL_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->mEmptyContactCount:I

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/i;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    return-void
.end method

.method private static FixName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private addContactEntity(Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToFirst()Z

    const/4 v6, 0x0

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v17, v0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    move/from16 v16, v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->interpretGroupNames(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->isEditGroupNumberData()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getGroupIds()Ljava/util/List;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUserByGroupIds(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToFirst()Z

    :goto_2
    new-array v5, v15, [Landroid/content/ContentValues;

    new-array v6, v14, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_3
    move/from16 v0, v16

    if-lt v4, v0, :cond_c

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_1

    new-array v7, v1, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    move v3, v1

    :goto_4
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ORG_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_1
    if-lez v15, :cond_2

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_2
    if-lez v14, :cond_3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->METHODS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToNext()Z

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->TAG_MAP:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v17, v16

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_6

    add-int/lit8 v1, v15, 0x1

    move v8, v6

    move v6, v14

    move/from16 v18, v1

    move-object v1, v7

    move/from16 v7, v18

    :goto_5
    add-int/lit8 v9, v16, 0x1

    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToNext()Z

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object v7, v1

    move v6, v9

    goto/16 :goto_0

    :pswitch_1
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    aput v6, v17, v16

    move v6, v14

    move v8, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    aput v1, v17, v16

    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto :goto_5

    :pswitch_3
    const/4 v1, 0x2

    if-ge v6, v1, :cond_13

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    aput v6, v17, v16

    move v6, v14

    move v8, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :pswitch_4
    if-gtz v6, :cond_13

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    aput v6, v17, v16

    move v6, v14

    move v8, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :pswitch_5
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto :goto_5

    :pswitch_6
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto :goto_5

    :pswitch_7
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    move v7, v15

    move v8, v6

    move v6, v14

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x4

    if-ge v1, v8, :cond_13

    add-int/lit8 v1, v14, 0x1

    move v8, v6

    move v6, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v16, 0x1

    const/4 v8, -0x1

    aput v8, v17, v16

    move v8, v1

    move v9, v6

    move-object v1, v7

    move v6, v14

    move v7, v15

    goto/16 :goto_6

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getGroupIds()Ljava/util/List;

    move-result-object v12

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v8, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUpdateUserByGroupIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, ""

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUser(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToFirst()Z

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUpdateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_c
    aget v2, v17, v4

    if-gez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToNext()Z

    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v7

    if-nez v7, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToNext()Z

    goto :goto_8

    :cond_e
    aget v2, v17, v4

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_f

    aget v2, v17, v4

    sparse-switch v2, :sswitch_data_0

    move v2, v3

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToNext()Z

    move v3, v2

    goto :goto_8

    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addPhone(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_9

    :sswitch_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addEmailOrAddress(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :sswitch_2
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_9

    :cond_f
    aget v2, v17, v4

    packed-switch v2, :pswitch_data_1

    :goto_a
    :pswitch_8
    move v2, v3

    goto :goto_9

    :pswitch_9
    add-int/lit8 v2, v1, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addEmailOrAddress(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :pswitch_a
    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addIM(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :pswitch_b
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addPhotoDefault(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;)V

    move v2, v3

    goto :goto_9

    :pswitch_c
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/object/d;

    const-string v8, ""

    invoke-static {v4, v1, v8}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addORG(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v7, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto/16 :goto_4

    :cond_11
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    const/4 v8, 0x0

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/object/d;

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v8, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addORG(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v7, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v4, v3, 0x1

    sget-object v8, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/object/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpim/sdk/object/d;

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addORG(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v7, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_4

    :cond_13
    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private addContactMethodList([Landroid/content/ContentValues;)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->METHODS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private addContactToGroups(JLjava/util/ArrayList;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addToMyContactsGroup(J)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a(JI)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/contact/i;->b(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    long-to-int v2, v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a(JI)Z

    goto :goto_0
.end method

.method private addContactToGroupsByGroupIds(JLjava/util/List;)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addToMyContactsGroup(J)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, p1, p2, v0}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a(JI)Z

    goto :goto_0
.end method

.method private static addEmailOrAddress(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "kind"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    invoke-virtual {p0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->combineString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    array-length v1, v1

    if-le v1, v5, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_1
    const-string v1, "kind"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    invoke-virtual {p0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private addIM(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->fetionAddDefault(Landroid/content/ContentValues;)V

    :goto_0
    array-length v1, v1

    if-le v1, v4, :cond_0

    const-string v1, "isprimary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "data"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "kind"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    const-string v3, "aux_data"

    invoke-static {v2}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addNote(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const-string v0, ""

    invoke-virtual {p2, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "notes"

    invoke-virtual {p2, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addORG(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ORGTYPE:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v1, v1

    if-le v1, v5, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "company"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_2
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static addPhone(Lcom/tencent/qqpim/sdk/object/d;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->TELTYPE:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "number"

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_1
    const-string v1, "type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addPhoneList([Landroid/content/ContentValues;)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addPhoto(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPhoto(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    const-string v0, "SYSContactDaoV1"

    const-string v4, "queryAllWithPhoto NumberFormatException"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static addToMyContactsGroup(J)V
    .locals 6

    const/4 v2, 0x0

    sget-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "system_id=\'Contacts\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "person"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "group_id"

    sget-wide v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addUpdateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addColomn()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUpdateUserDefault()V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addContactToGroups(JLjava/util/ArrayList;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUpdateUserByGroupIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addContactToGroupsByGroupIds(JLjava/util/List;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUser(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUserDefaultValuesDefault()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p3, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p5}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addContactToGroups(JLjava/util/ArrayList;)V

    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private addUserByGroupIds(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addUserByGroupIdsDefault()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p3, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p5}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addContactToGroupsByGroupIds(JLjava/util/List;)V

    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private deleteInfo(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notes"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v6, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "contact_methods"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "phones"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo"

    invoke-static {v6, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "organizations"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0
.end method

.method private static fixName2(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [C

    const/16 v1, 0x5c

    aput-char v1, v0, v7

    const/16 v1, 0x3b

    aput-char v1, v0, v6

    const/16 v1, 0x72

    aput-char v1, v0, v4

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    const/16 v1, 0x3b

    invoke-static {p0, v0, v1}, Lcom/tencent/wscl/TextUtil;->divideStringToList(Ljava/lang/String;[CC)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_e

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_d

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_c

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x4

    if-le v0, v9, :cond_b

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    if-eqz v2, :cond_2

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :goto_7
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_3

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    if-eqz v1, :cond_5

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v1, :cond_7

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_7

    :cond_a
    move v2, v7

    goto :goto_6

    :cond_b
    move-object v0, v2

    goto :goto_5

    :cond_c
    move-object v5, v2

    goto :goto_4

    :cond_d
    move-object v4, v2

    goto/16 :goto_3

    :cond_e
    move-object v3, v2

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->mInstance:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPersonIdSelectionStrings(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "person IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_4

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static getPhoneUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private queryContactMethodLis(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "contact_methods"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYCMID:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v0, "kind"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_4

    const-string v0, "EMAIL"

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "label"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-ge v0, v10, :cond_1

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SYSContactDaoV1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryContactMethodLis():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_2

    :cond_4
    if-ne v0, v9, :cond_6

    const-string v0, "ADR"

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ";;"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->chNeedEscapeChars:[C

    invoke-static {v3, v4}, Lcom/tencent/wscl/TextUtil;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "label"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :try_start_1
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_3
    if-ge v0, v10, :cond_1

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v3, "SYSContactDaoV1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryContactMethodLis():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_3

    :cond_6
    const-string v0, "X-TC-IM"

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v0, "aux_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->fetionqueryDefault(ILcom/tencent/qqpim/sdk/object/d;)V

    goto/16 :goto_1

    :cond_7
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method private queryGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/contact/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v3, 0x0

    const-string v4, "CATEGORIES"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private queryGroup(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v3, 0x0

    const-string v4, "CATEGORIES"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static queryNameNotesAndStarred(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v7

    const-string v4, "notes"

    aput-object v4, v2, v6

    const-string v4, "starred"

    aput-object v4, v2, v12

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v9, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v9}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    move v0, v6

    :goto_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v5, :cond_3

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v10, "N"

    invoke-virtual {v6, v7, v10}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v10, "\\"

    const-string v11, "\\\\"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v10, ";"

    const-string v11, "\\;"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v12, v5}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v6, "NOTE"

    invoke-virtual {v5, v7, v6}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v5, v12, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v4, "X-FOCUS"

    invoke-virtual {v9, v7, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_3
    invoke-virtual {v9, v12, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v4, "RINGTONE"

    invoke-virtual {v0, v7, v4}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v12, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto :goto_1

    :cond_7
    const-string v0, "0"

    goto :goto_3

    :cond_8
    move v0, v7

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_2
.end method

.method private static queryORG(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "person = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v7

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYORGID:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v3, "ORG"

    invoke-virtual {v1, v7, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v3, "TITLE"

    invoke-virtual {v2, v7, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v3, "company"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v3, "label"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ORGTYPE:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v1, v8, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v8, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private queryOnlyGroupId(Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/contact/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->setId(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/tencent/qqpim/sdk/object/a/b;->setGroupIds(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private queryOnlyGroupId([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    new-array v0, v1, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    goto :goto_0

    :cond_1
    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v5, v4}, Lcom/tencent/qqpim/sdk/sync/contact/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    invoke-virtual {v6, v4}, Lcom/tencent/qqpim/sdk/object/a/b;->setId(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/tencent/qqpim/sdk/object/a/b;->setGroupIds(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static queryPhoneList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v6

    const-string v0, "type"

    aput-object v0, v2, v8

    const-string v0, "label"

    aput-object v0, v2, v9

    const/4 v0, 0x3

    const-string v1, "isprimary"

    aput-object v1, v2, v0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v6

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYPHONEID:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "TEL"

    invoke-virtual {v3, v6, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "number"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const-string v1, "type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    :try_start_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    if-lez v1, :cond_4

    const/16 v4, 0x8

    if-ge v1, v4, :cond_4

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->TELTYPE:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v8, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :goto_3
    const-string v1, "isprimary"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v8, :cond_3

    invoke-virtual {v3, v8}, Lcom/tencent/qqpim/sdk/object/d;->a(Z)V

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "SYSContactDaoV1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "queryPhoneList():"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    goto :goto_2

    :cond_4
    const-string v1, "label"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto :goto_3
.end method

.method private static queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v0, "PHOTO"

    invoke-virtual {v6, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "person="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/tencent/qqpim/sdk/object/d;->a([B)V

    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v4, v6

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static transformInputstream(Ljava/io/InputStream;)[B
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transformInputstream(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addContactEntity(Lcom/tencent/qqpim/sdk/object/a/b;)V

    sget-wide v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->maxId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

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

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1
.end method

.method protected addColomn()V
    .locals 0

    return-void
.end method

.method public addContactPhoto(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, p2}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addContactPhotoBatch(Ljava/util/List;)Z
    .locals 5

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmContactId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmPhotoData()[B

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmContactId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmPhotoData()[B

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addContactPhoto(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_0
.end method

.method protected addPhotoDefault(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addPhoto(Landroid/net/Uri;Lcom/tencent/qqpim/sdk/object/d;)Z

    return-void
.end method

.method protected addUpdateUserDefault()V
    .locals 0

    return-void
.end method

.method protected addUserByGroupIdsDefault()V
    .locals 0

    return-void
.end method

.method protected addUserDefaultValuesDefault()V
    .locals 0

    return-void
.end method

.method public delAllContactNotFilterAccountAndName()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->deleteAll()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public delContactPhotoBatch(Ljava/util/List;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SYSContactDaoV1"

    const-string v2, "delete mutiple enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "_id IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_2

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV1"

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

    goto :goto_0

    :cond_4
    const-string v0, "SYSContactDaoV1"

    const-string v1, "delete mutiple leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0
.end method

.method public deleteAll()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV1"

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

.method protected fetionAddDefault(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "aux_data"

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected fetionqueryDefault(ILcom/tencent/qqpim/sdk/object/d;)V
    .locals 2

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAllEntityId(Ljava/util/List;Z)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->getAllEntityIdDefault()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->getAllEntityIdDefault_2(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/i;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/contact/i;->a()V

    goto :goto_0
.end method

.method protected getAllEntityIdDefault()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getAllEntityIdDefault_2(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 1

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllEntityIdWithPhoto()Ljava/util/List;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV1"

    const-string v1, "getAllEntityIdWithPhoto()  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "data is not null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_4

    const-string v0, "person"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SYSContactDaoV1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllEntityIdWithPhoto people_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string v1, "SYSContactDaoV1"

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v1

    goto :goto_2
.end method

.method public getContactPhoto(Ljava/lang/String;)[B
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "person="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContactPhoto(), "

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

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method public getEmptyContactCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPeopleNames([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11

    const/4 v5, 0x0

    const/16 v10, 0x3e6

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string v1, "display_name"

    aput-object v1, v2, v0

    array-length v1, p1

    div-int/lit16 v0, v1, 0x3e6

    rem-int/lit16 v8, v1, 0x3e6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v7, v0, -0x1

    if-gez v7, :cond_4

    if-lez v8, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v9, v6, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v8, -0x1

    :goto_1
    if-gtz v0, :cond_b

    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "number"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v8, [Ljava/lang/String;

    move v0, v6

    :goto_2
    if-lt v0, v8, :cond_c

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->formatPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

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
    new-array v4, v10, [Ljava/lang/String;

    move v0, v6

    :goto_3
    if-lt v0, v10, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v9, v6, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e5

    :goto_4
    if-gtz v0, :cond_a

    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "number"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wscl/TextUtil;->formatPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v7

    goto/16 :goto_0

    :cond_9
    add-int v1, v8, v0

    mul-int/lit16 v3, v7, 0x3e6

    add-int/2addr v1, v3

    aget-object v1, p1, v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const-string v1, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "number"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") OR "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    :cond_b
    const-string v1, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "number"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") OR "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_c
    aget-object v1, p1, v0

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0
.end method

.method public lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "number_key=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "person"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 3

    new-instance v0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/a/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/object/a/b;->setId(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->h:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v1, :cond_1

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryNameNotesAndStarred(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->j:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryPhoneList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryContactMethodLis(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryORG(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_2

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_2
    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->c:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v1, :cond_4

    :cond_3
    const-string v1, "PHOTO"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->a(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/a/b;->a(Z)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/a/b;->a([B)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a([B)V

    :cond_4
    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryGroup(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/a/b;->setGroupIds(Ljava/util/List;)V

    goto :goto_0
.end method

.method public query()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name asc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0
.end method

.method protected query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public queryBatch()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryOnlyGroupId(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->i:Lcom/tencent/qqpim/sdk/interfaces/c;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryOnlyGroupId([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public queryContactsOnlyPhoto(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v3, "data is not null"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->getPersonIdSelectionStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "person"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "data"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_3
    :try_start_2
    new-instance v0, Lcom/tencent/qqpim/sdk/object/a/e;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/a/e;-><init>()V

    const-string v2, "data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v4, 0x0

    const-string v5, "PHOTO"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/tencent/qqpim/sdk/object/d;->a([B)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/a/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    const-string v2, "person"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/a/e;->setId(Ljava/lang/String;)V

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qqpim/sdk/object/a/e;->a(J)V

    invoke-direct {p0, v7, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->addPhotoEntityToMap(Ljava/util/HashMap;Lcom/tencent/qqpim/sdk/object/a/e;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v8, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string v1, "SYSContactDaoV1"

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v1

    goto :goto_2
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method public queryNumber()I
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryNumberDefault()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected queryNumberDefault()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected queryPhotoToList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 2

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public update(Ljava/util/List;[I)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->convertDaoRetToEngineRet(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;)I

    move-result v0

    aput v0, p2, v1

    goto :goto_1
.end method

.method public updateContactPhoto(Ljava/lang/String;[B)Z
    .locals 8

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

    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "person=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

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

    const-string v3, "SYSContactDaoV1"

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
