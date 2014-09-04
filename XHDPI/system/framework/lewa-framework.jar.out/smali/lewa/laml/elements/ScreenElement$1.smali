.class synthetic Llewa/laml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

.field static final synthetic $SwitchMap$lewa$laml$elements$ScreenElement$AlignV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Llewa/laml/elements/ScreenElement$AlignV;->values()[Llewa/laml/elements/ScreenElement$AlignV;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$AlignV:[I

    :try_start_0
    sget-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$AlignV:[I

    sget-object v1, Llewa/laml/elements/ScreenElement$AlignV;->TOP:Llewa/laml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$AlignV:[I

    sget-object v1, Llewa/laml/elements/ScreenElement$AlignV;->CENTER:Llewa/laml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$AlignV:[I

    sget-object v1, Llewa/laml/elements/ScreenElement$AlignV;->BOTTOM:Llewa/laml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 148
    :goto_2
    invoke-static {}, Llewa/laml/elements/ScreenElement$Align;->values()[Llewa/laml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

    :try_start_3
    sget-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

    sget-object v1, Llewa/laml/elements/ScreenElement$Align;->LEFT:Llewa/laml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

    sget-object v1, Llewa/laml/elements/ScreenElement$Align;->CENTER:Llewa/laml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Llewa/laml/elements/ScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

    sget-object v1, Llewa/laml/elements/ScreenElement$Align;->RIGHT:Llewa/laml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 174
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
