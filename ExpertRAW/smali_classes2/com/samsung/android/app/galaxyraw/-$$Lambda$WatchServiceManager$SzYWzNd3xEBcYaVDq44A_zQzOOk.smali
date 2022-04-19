.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;->f$1:I

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->lambda$updateThumbnail$3$WatchServiceManager(ILjava/lang/Float;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method
