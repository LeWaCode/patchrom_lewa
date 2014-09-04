.class Llewa/widget/dicon/DIcon$BinderVar;
.super Ljava/lang/Object;
.source "DIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/dicon/DIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BinderVar"
.end annotation


# static fields
.field public static final VAR_TYPE_DOUBLE:I = 0x3

.field public static final VAR_TYPE_FLOAT:I = 0x2

.field public static final VAR_TYPE_INT:I = 0x0

.field public static final VAR_TYPE_LONG:I = 0x1

.field public static final VAR_TYPE_STRING:I = 0x4


# instance fields
.field bindedName:Ljava/lang/String;

.field columnName:Ljava/lang/String;

.field defaultValue:Ljava/lang/String;

.field row:I

.field final synthetic this$0:Llewa/widget/dicon/DIcon;

.field type:I


# direct methods
.method constructor <init>(Llewa/widget/dicon/DIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Llewa/widget/dicon/DIcon$BinderVar;->this$0:Llewa/widget/dicon/DIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
