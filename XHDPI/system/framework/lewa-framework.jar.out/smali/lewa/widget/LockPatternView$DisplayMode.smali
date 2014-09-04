.class public final enum Llewa/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Llewa/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Llewa/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Llewa/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Llewa/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Llewa/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/widget/LockPatternView$DisplayMode;->Correct:Llewa/widget/LockPatternView$DisplayMode;

    .line 156
    new-instance v0, Llewa/widget/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Llewa/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/widget/LockPatternView$DisplayMode;->Animate:Llewa/widget/LockPatternView$DisplayMode;

    .line 161
    new-instance v0, Llewa/widget/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Llewa/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/widget/LockPatternView$DisplayMode;->Wrong:Llewa/widget/LockPatternView$DisplayMode;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Llewa/widget/LockPatternView$DisplayMode;

    sget-object v1, Llewa/widget/LockPatternView$DisplayMode;->Correct:Llewa/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Llewa/widget/LockPatternView$DisplayMode;->Animate:Llewa/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Llewa/widget/LockPatternView$DisplayMode;->Wrong:Llewa/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Llewa/widget/LockPatternView$DisplayMode;->$VALUES:[Llewa/widget/LockPatternView$DisplayMode;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/widget/LockPatternView$DisplayMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 146
    const-class v0, Llewa/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Llewa/widget/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Llewa/widget/LockPatternView$DisplayMode;->$VALUES:[Llewa/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Llewa/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
