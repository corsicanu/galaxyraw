.class public interface abstract Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;
.super Ljava/lang/Object;
.source "ITextService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/service/sdk/common/text/ITextService$Stub;
    }
.end annotation


# virtual methods
.method public abstract classifyMessage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract extractMessageKeywords(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSuggestedQuery(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract identifyLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract translateLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
