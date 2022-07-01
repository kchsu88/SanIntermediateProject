.class public interface abstract annotation Lccsanandroidx/annotation/RequiresOptIn;
.super Ljava/lang/Object;
.source "RequiresOptIn.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lccsanandroidx/annotation/RequiresOptIn;
        level = .enum Lccsanandroidx/annotation/RequiresOptIn$Level;->ERROR:Lccsanandroidx/annotation/RequiresOptIn$Level;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/annotation/RequiresOptIn$Level;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\n\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lccsanandroidx/annotation/RequiresOptIn;",
        "",
        "level",
        "Lccsanandroidx/annotation/RequiresOptIn$Level;",
        "()Lccsanandroidx/annotation/RequiresOptIn$Level;",
        "Level",
        "annotation-experimental_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lccsankotlin/annotation/Retention;
    value = .enum Lccsankotlin/annotation/AnnotationRetention;->BINARY:Lccsankotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lccsankotlin/annotation/Target;
    allowedTargets = {
        .enum Lccsankotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lccsankotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract level()Lccsanandroidx/annotation/RequiresOptIn$Level;
.end method
