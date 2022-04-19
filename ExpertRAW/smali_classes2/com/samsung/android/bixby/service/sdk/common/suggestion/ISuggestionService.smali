.class public interface abstract Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;
.super Ljava/lang/Object;
.source "ISuggestionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSuggestedQuery(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
