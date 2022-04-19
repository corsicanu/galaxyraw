.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$0:Z

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$3:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$0:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$2:Landroid/graphics/Rect;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$SuperSlowMotionRecordingManager$melVO6rQVRgXeNJyF7IG6DO1CgE;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;->lambda$enableSuperSlowMotionAutoDetect$0(ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
