.class synthetic Llewa/lockscreen/view/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$graphics$Paint$Align:[I

.field static final synthetic $SwitchMap$lewa$lockscreen$view$ScreenElement$AlignV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Llewa/lockscreen/view/ScreenElement$AlignV;->values()[Llewa/lockscreen/view/ScreenElement$AlignV;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$lewa$lockscreen$view$ScreenElement$AlignV:[I

    :try_start_0
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$lewa$lockscreen$view$ScreenElement$AlignV:[I

    sget-object v1, Llewa/lockscreen/view/ScreenElement$AlignV;->TOP:Llewa/lockscreen/view/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$lewa$lockscreen$view$ScreenElement$AlignV:[I

    sget-object v1, Llewa/lockscreen/view/ScreenElement$AlignV;->CENTER:Llewa/lockscreen/view/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$lewa$lockscreen$view$ScreenElement$AlignV:[I

    sget-object v1, Llewa/lockscreen/view/ScreenElement$AlignV;->BOTTOM:Llewa/lockscreen/view/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 108
    :goto_2
    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    :try_start_3
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

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

    .line 126
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
