.class final Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;
.super Ljava/lang/Object;
.source "MutableClassToInstanceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MutableClassToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;, "Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm<TB;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;->backingMap:Ljava/util/Map;

    .line 162
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 165
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;, "Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm<TB;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;->backingMap:Ljava/util/Map;

    invoke-static {v0}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->create(Ljava/util/Map;)Lccsancom/google/common/collect/MutableClassToInstanceMap;

    move-result-object v0

    return-object v0
.end method
