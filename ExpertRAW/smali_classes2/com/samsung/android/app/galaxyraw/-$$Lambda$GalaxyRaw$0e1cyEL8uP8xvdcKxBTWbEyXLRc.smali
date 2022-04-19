.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;->f$1:Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$notifyThumbnailUpdatedEventToWatch$15$GalaxyRaw(Landroid/graphics/Bitmap;I)V

    return-void
.end method
