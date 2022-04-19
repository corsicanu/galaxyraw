.class Lcom/samsung/android/app/galaxyraw/core2/local/internal/TypeReference$SpecializedTypeReference;
.super Lcom/samsung/android/app/galaxyraw/core2/local/internal/TypeReference;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/local/internal/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecializedTypeReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/galaxyraw/core2/local/internal/TypeReference<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/internal/TypeReference;-><init>(Ljava/lang/reflect/Type;Lcom/samsung/android/app/galaxyraw/core2/local/internal/TypeReference$1;)V

    return-void
.end method
