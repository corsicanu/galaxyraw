.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;
.super Ljava/lang/Object;
.source "IndicatorContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract hideRemainCountIndicator()V
.end method

.method public abstract showRemainCountIndicator(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation
.end method
