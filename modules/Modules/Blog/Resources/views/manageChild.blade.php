<ul>
    @foreach($childs as $child)
        <li>
            {{ $child->content }}
        @if(count($child->childs))
                @include('blog::manageChild',['childs' => $child->childs])
            @endif
        </li>
    @endforeach
    </ul>
