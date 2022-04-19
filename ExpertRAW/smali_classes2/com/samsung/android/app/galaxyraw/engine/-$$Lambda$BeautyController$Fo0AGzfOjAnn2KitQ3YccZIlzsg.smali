.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$Fo0AGzfOjAnn2KitQ3YccZIlzsg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/BeautyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$Fo0AGzfOjAnn2KitQ3YccZIlzsg;->f$0:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$Fo0AGzfOjAnn2KitQ3YccZIlzsg;->f$0:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->lambda$initializePhotoBeauty$0$BeautyController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method
