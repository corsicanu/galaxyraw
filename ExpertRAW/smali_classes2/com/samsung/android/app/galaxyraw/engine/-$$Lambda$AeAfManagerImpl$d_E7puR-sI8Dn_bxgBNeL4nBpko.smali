.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$d_E7puR-sI8Dn_bxgBNeL4nBpko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$d_E7puR-sI8Dn_bxgBNeL4nBpko;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$d_E7puR-sI8Dn_bxgBNeL4nBpko;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->lambda$stop$4$AeAfManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method
