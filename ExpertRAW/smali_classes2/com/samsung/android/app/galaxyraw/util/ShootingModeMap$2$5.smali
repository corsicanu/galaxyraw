.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2$5;
.super Landroid/util/SparseArray;
.source "ShootingModeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2$5;->this$0:Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2$5;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2$5;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
