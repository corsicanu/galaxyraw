.class public interface abstract Lcom/samsung/android/apex/service/IApexService;
.super Ljava/lang/Object;
.source "IApexService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/service/IApexService$Stub;,
        Lcom/samsung/android/apex/service/IApexService$Default;
    }
.end annotation


# virtual methods
.method public abstract getMotionPhotoComposer(Lcom/samsung/android/apex/service/IMotionPhotoComposerListener;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
