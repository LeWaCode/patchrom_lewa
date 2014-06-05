.class public final enum Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private static final synthetic ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum SOFT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "SOFT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SOFT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v5, v4}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v6, v5}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "EVENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v6}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v7, v7}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "MMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "CALLLOG"

    const/4 v2, 0x6

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "TODO"

    const/4 v2, 0x7

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "NOTE"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "TNOTE"

    const/16 v2, 0x9

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "SECSMS"

    const/16 v2, 0xa

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "BWLIST"

    const/16 v2, 0xb

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SOFT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v8

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->value:I

    return-void
.end method

.method public static convertDataTypeFromInt(I)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 5

    invoke-static {}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v4

    if-eq v4, p0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static convertDataTypesToArrays(I)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-nez p0, :cond_0

    return-object v1

    :cond_0
    and-int v2, p0, v0

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr p0, v2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 1

    const-class v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v1

    iget v2, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->value:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->value:I

    return v0
.end method
