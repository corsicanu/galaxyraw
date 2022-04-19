.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$sK05bhy6_0kwNIAJxu5gSzbFzxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$sK05bhy6_0kwNIAJxu5gSzbFzxE;->f$0:[I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BeautyController$sK05bhy6_0kwNIAJxu5gSzbFzxE;->f$0:[I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->lambda$setVideoBodyBeautyLevel$5([ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
