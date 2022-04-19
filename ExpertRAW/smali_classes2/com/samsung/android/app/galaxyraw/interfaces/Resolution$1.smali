.class Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$1;
.super Landroid/util/SparseArray;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->access$000(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$1;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
