.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;
.super Ljava/lang/Object;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionState"
.end annotation


# instance fields
.field private id:I

.field private param:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->param:Ljava/util/List;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->id:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->param:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->id:I

    return p0
.end method

.method public getParam()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->param:Ljava/util/List;

    return-object p0
.end method
