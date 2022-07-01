.class public interface abstract annotation Lccsanandroidx/annotation/experimental/UseExperimental;
.super Ljava/lang/Object;
.source "UseExperimental.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lccsankotlin/Deprecated;
    message = "This annotation has been replaced by `@OptIn`"
    replaceWith = .subannotation Lccsankotlin/ReplaceWith;
        expression = "OptIn"
        imports = {
            "androidx.annotation.OptIn"
        }
    .end subannotation
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u00002\u00020\u0001B$\u0012\"\u0010\u0002\u001a\u0012\u0012\u000e\u0008\u0001\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u00040\u0003\"\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0004R\u001f\u0010\u0002\u001a\u0012\u0012\u000e\u0008\u0001\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u00040\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lccsanandroidx/annotation/experimental/UseExperimental;",
        "",
        "markerClass",
        "",
        "Lccsankotlin/reflect/KClass;",
        "()[Ljava/lang/Class;",
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
        .enum Lccsankotlin/annotation/AnnotationTarget;->CLASS:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->FUNCTION:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->FILE:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->TYPEALIAS:Lccsankotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract markerClass()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method
