.class public Lcom/tencent/tccsync/DataTypeConverter;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[I
    .locals 3

    sget-object v0, Lcom/tencent/tccsync/DataTypeConverter;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SOFT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/tencent/tccsync/DataTypeConverter;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToNewDataTyepDef(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tccsync/DataTypeConverter;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x100

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x400

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static convertToOldDataTypeDef(I)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x400 -> :sswitch_6
    .end sparse-switch
.end method

.method public static convertToOldDataTypeDefInt(I)I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tccsync/DataTypeConverter;->convertToOldDataTypeDef(I)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v0

    return v0
.end method
