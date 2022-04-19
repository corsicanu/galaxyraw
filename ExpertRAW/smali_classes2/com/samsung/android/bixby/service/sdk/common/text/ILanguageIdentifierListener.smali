.class public interface abstract Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;
.super Ljava/lang/Object;
.source "ILanguageIdentifierListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLanguageIdentified(Lcom/samsung/android/bixby/service/sdk/common/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
