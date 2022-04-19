.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$OcdpN0VIADC0F7eQTK5vikMHoAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$OcdpN0VIADC0F7eQTK5vikMHoAg;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$OcdpN0VIADC0F7eQTK5vikMHoAg;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$notifyThumbnailUpdatedEventToWatch$16$GalaxyRaw()V

    return-void
.end method
