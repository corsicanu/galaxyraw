.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7$1;
.super Landroid/util/SparseArray;
.source "ShootingModeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;
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
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7$1;->this$0:Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7$1;->put(ILjava/lang/Object;)V

    return-void
.end method
