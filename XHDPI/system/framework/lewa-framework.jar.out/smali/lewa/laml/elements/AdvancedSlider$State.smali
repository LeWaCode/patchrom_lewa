.class final enum Llewa/laml/elements/AdvancedSlider$State;
.super Ljava/lang/Enum;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/elements/AdvancedSlider$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/elements/AdvancedSlider$State;

.field public static final enum Invalid:Llewa/laml/elements/AdvancedSlider$State;

.field public static final enum Normal:Llewa/laml/elements/AdvancedSlider$State;

.field public static final enum Pressed:Llewa/laml/elements/AdvancedSlider$State;

.field public static final enum Reached:Llewa/laml/elements/AdvancedSlider$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1136
    new-instance v0, Llewa/laml/elements/AdvancedSlider$State;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Llewa/laml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    new-instance v0, Llewa/laml/elements/AdvancedSlider$State;

    const-string v1, "Pressed"

    invoke-direct {v0, v1, v3}, Llewa/laml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    new-instance v0, Llewa/laml/elements/AdvancedSlider$State;

    const-string v1, "Reached"

    invoke-direct {v0, v1, v4}, Llewa/laml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    new-instance v0, Llewa/laml/elements/AdvancedSlider$State;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v5}, Llewa/laml/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/AdvancedSlider$State;->Invalid:Llewa/laml/elements/AdvancedSlider$State;

    .line 1135
    const/4 v0, 0x4

    new-array v0, v0, [Llewa/laml/elements/AdvancedSlider$State;

    sget-object v1, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    aput-object v1, v0, v2

    sget-object v1, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/elements/AdvancedSlider$State;->Invalid:Llewa/laml/elements/AdvancedSlider$State;

    aput-object v1, v0, v5

    sput-object v0, Llewa/laml/elements/AdvancedSlider$State;->$VALUES:[Llewa/laml/elements/AdvancedSlider$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/elements/AdvancedSlider$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 1135
    const-class v0, Llewa/laml/elements/AdvancedSlider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public static values()[Llewa/laml/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    .line 1135
    sget-object v0, Llewa/laml/elements/AdvancedSlider$State;->$VALUES:[Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0}, [Llewa/laml/elements/AdvancedSlider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/elements/AdvancedSlider$State;

    return-object v0
.end method
