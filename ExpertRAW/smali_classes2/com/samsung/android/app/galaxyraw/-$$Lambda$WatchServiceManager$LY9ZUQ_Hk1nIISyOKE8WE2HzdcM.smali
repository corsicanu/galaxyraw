.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

.field public final synthetic f$1:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;->f$1:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;->f$1:Ljava/util/Optional;

    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->lambda$updateThumbnail$4$WatchServiceManager(Ljava/util/Optional;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
