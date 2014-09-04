.class public Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;
.super Ljava/lang/Object;
.source "PrimitiveTypeAdapters.java"


# static fields
.field static final BOOLEAN_ADAPTER:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final INT_ADAPTER:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field static final LONG_ADAPTER:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field static final STRING_ADAPTER:Lcom/lewa/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static numberAsString:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->numberAsString:Z

    .line 28
    new-instance v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$1;

    invoke-direct {v0}, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$1;-><init>()V

    sput-object v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->STRING_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    .line 47
    new-instance v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$2;

    invoke-direct {v0}, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$2;-><init>()V

    sput-object v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->LONG_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    .line 70
    new-instance v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;

    invoke-direct {v0}, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$3;-><init>()V

    sput-object v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->INT_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    .line 93
    new-instance v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$4;

    invoke-direct {v0}, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters$4;-><init>()V

    sput-object v0, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->BOOLEAN_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
