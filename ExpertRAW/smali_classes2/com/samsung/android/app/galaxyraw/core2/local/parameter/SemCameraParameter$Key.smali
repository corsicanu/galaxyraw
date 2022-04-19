.class public Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;
.super Ljava/lang/Object;
.source "SemCameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;->mKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;->mKey:Ljava/lang/String;

    return-object p0
.end method
