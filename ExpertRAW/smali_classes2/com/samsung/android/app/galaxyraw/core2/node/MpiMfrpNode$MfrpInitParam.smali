.class public Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;
.super Ljava/lang/Object;
.source "MpiMfrpNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MfrpInitParam"
.end annotation


# instance fields
.field public camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s - camCapability(%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
